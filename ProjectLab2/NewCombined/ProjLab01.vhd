----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Rob Mushrall
--				 Timothy Doucette Jr
--				 Christopher Parks
-- 
-- Create Date:    15:43:26 03/25/2016 
-- Design Name: 
-- Module Name:    ProjLab01 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity ProjLab01 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  --instruction	: in STD_LOGIC_VECTOR (15 downto 0);
           ALU_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           DST_ADR : out  STD_LOGIC_VECTOR (15 downto 0);
           STORE_DATA : out  STD_LOGIC_VECTOR (15 downto 0);
           CCR : out  STD_LOGIC_VECTOR (3 downto 0);
			  DEBUG_OUT	: out STD_LOGIC_VECTOR (15 downto 0));
end ProjLab01;


architecture Structural of ProjLab01 is
	signal OP1, OP2, OP3, OP4, OP_DC1, OP_DC2	  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RA1, RA2, RA3    	  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RA4						  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '1');
	signal RB1, RB2, RB3, RB4	  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal PC0, PC1, PC2, PC3, PC4	: STD_LOGIC_VECTOR (4 downto 0) := (OTHERS => '0');
	signal IMM1, IMM2, IMM3		  : STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal GLOBAL_EN 				  : STD_LOGIC := '1'; -- Determines whether things are enabled (allowed to operate)
	signal IMM_SEL 				  : STD_LOGIC := '0'; -- Determines selection between immediate data and RB
	signal PC_EN, PC_INC 			: STD_LOGIC := '1'; -- Program counter enable
	signal PC_RST 						: STD_LOGIC := '0';
	signal INST_EN 				  : STD_LOGIC := '1'; -- Enables instruction memory
	signal RD_EN, WR_EN 			  : STD_LOGIC := '0'; -- Enables the register bank to read, write
	signal OPR1, OPR2, OPRB		  :STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0'); -- From reg bank to RA and RB data registers
	
	signal OPIN	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RAIN	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RBIN	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal IMMIN	: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal IMSEL	: STD_LOGIC := '0';
	signal OP1_SEL	: STD_LOGIC_VECTOR (2 downto 0) := (OTHERS => '0');
	signal OP2_SEL	: STD_LOGIC_VECTOR (1 downto 0) := (OTHERS => '0');	-- Selector for data contention
	
	signal ALU_RESULT		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Latched Result of ALU
	signal ALU_VAL			: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Result direct from ALU
	signal ALU_OUT_FLAGS	: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');	-- flags output from ALU
	signal ALU_FLAGS		: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');	-- latched flags from ALU
	signal RA_IN, RB_IN	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Values to go to DC Muxes
	signal RA_OUT, RB_OUT	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Values from DC muxes to ALU
	
	signal ALU_DC1, ALU_DC2:	STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Data contention ALU values
	signal RA_DC1, RA_DC2:		STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '1'); -- Data contention RA values
	signal RB_DC1, RB_DC2:		STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '1');	-- Data contention RB values
	
	signal DATARD_EN, DATAWR_EN:	STD_LOGIC := '0';	-- Enable reading or writing to/from Data Memory
	
	----> Project Lab 2 <----
	signal SH_DATA						: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
	signal EXMEM_ADR, EXMEM_OUT	: STD_LOGIC_VECTOR (15 downto 0)	:= (OTHERS => '0');
	signal EXMEM_WREN, EXMEM_RDEN	: STD_LOGIC_VECTOR (0 downto 0) 	:= "0";
	signal ALUMUX_OUT					: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
	signal ALU_BRANCH					: STD_LOGIC := '0';
	signal BRANCH_SIG					: STD_LOGIC := '0';
	signal STALL_SIG					: STD_LOGIC := '0';
	signal CORRECT_SIG				: STD_LOGIC := '0';
	signal OFF1, OFF2					: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');	
	signal FETCH_BRANCH				: STD_LOGIC_VECTOR (4 downto 0) := (OTHERS => '0');
	

begin
	ALU_OUT <= ALU_RESULT;
	CCR <= ALU_FLAGS;
	DST_ADR <= "00000000" & PC4(3 downto 0) & RA4;
	DEBUG_OUT <= OPIN & RAIN & IMMIN;
	
	--------  Debugging I/O  --------
	---------------------------------
	--ALU_OUT <= "000" & RA4 & RB4 & PC4; --ALU_RESULT;
	--STORE_DATA <= "000" & IMSEL & OP4 & IMM3;
	
	--OPIN <= instruction(15 downto 12);
	--RAIN <= instruction(11 downto 8);
	--RBIN <= instruction(7 downto 4);
	--IMMIN <= instruction (7 downto 0);
	
	--------  ALU  --------
	-----------------------
	ALU_UNIT	: entity work.ALU_Toplevel
	port map(RA 		=> RA_OUT,
				RB 		=> RB_OUT,
				OP 		=> OP3,
				RST		=> RST,
				CLK		=> CLK,
				ALU_OUT 	=> ALU_VAL,
				SREG 		=> ALU_OUT_FLAGS,
				LDST_DAT => STORE_DATA,
				BRANCH	=> ALU_BRANCH);
				--LDST_ADR => DST_ADR);
				
	--------  Fetch  --------
	-------------------------
	Fetch_UNIT : entity work.Instruction_Memory_TL
	port map(	CLK			=> CLK,
					RST			=> RST,
					BRANCH		=> '0',
					BRNCH_ADR	=> FETCH_BRANCH,
					RA 			=> RAIN,
					RB 			=> RBIN,
					OP 			=> OPIN,
					IMM 			=> IMMIN,
					PC				=> PC0);
					

	--------  Control Units  --------
	---------------------------------
--	DISPTCH 	: entity work.Dispatch port map(CLK => CLK, -- (in)
--														  OPC => OP2, -- (in)
--														  RA  => RA2, -- (in)
--														  RB  => RB2, -- (in)
--														  RA4 => RA4, -- (in)
--													 IMM_SEL => IMM_SEL, -- (out)
--														  DC1 => DC2_1, -- (out)
--														  DC2 => DC2_2); -- Dispatch control unit (out)
	
--	FETCH 	: entity work.Fetch_CTL port map(CLK => CLK, -- (in)
--															 EN => GLOBAL_EN, -- (in)
--															RST => PC_RST, -- (out)
--															INC => PC_INC, -- (out)
--														 PC_EN => PC_EN, -- (out)
--													  INST_EN => INST_EN); -- Fetch control unit (out)
												  
	REGCTL	: entity work.REG_CTL port map(CLK => CLK, -- (in)
														 OPC => OP1, -- (in)
													   OPC4 => OP4, -- (in)
													  RD_EN => RD_EN, -- (out)
													  WR_EN => WR_EN); -- Register control unit (out)
											  
	DCCTL 	: entity work.DC_CTL port map(CLK => CLK, -- (in)
														 RA => RA3, -- (in)
														 RB => RB3,
														RA0 => RA4,
														RA1 => RA_DC1,
														RA2 => RA_DC2,
														OPC0 => OP4,
														OPC1 => OP_DC1,
														OPC2 => OP_DC2,
														OPC => OP3, -- (in)
														OP1_SEL => OP1_SEL, -- (out)
														OP2_SEL => OP2_SEL); -- Data contention (out)
	DATA_CTL	: entity work.DATA_CTL
	port map(CLK 	=> CLK,
				EN		=> NOT STALL_SIG,
				OP		=> OP3,
				RD_EN	=> DATARD_EN,
				WR_EN	=>	DATAWR_EN);
	
	IMSELECT	: entity work.IMSEL
	port map(OP			=> OP2,
				SEL_IM	=> IMSEL);
												  
	EXMEM_CTL : entity work.EX_MEM_CTL
   Port map(CLK	=> CLK,
				EN		=> NOT STALL_SIG,
				OP		=> OP3,
				RD_EN	=> EXMEM_RDEN,
				WR_EN	=> EXMEM_WREN);
	--------  Project Lab 2  --------
	---------------------------------
	SHREG: entity work.Shadow_Reg
	port map(RAddr => RB1(3 downto 2),
				CLK 	=> CLK,
				RST	=> RST,
				R		=> GLOBAL_EN,
				W		=> '0',
				RAout => SH_DATA);
				
	EXMEM_ADDER: entity work.Shadow_IMM_Add
	port map(SHADOW	=> SH_DATA,
				IMM 		=> IMM2(3 downto 0),
				EX_ADDR 	=> EXMEM_ADR);
	
	EX_MEM: entity work.EXTERNAL_MEMORY
	port map(clka 	=> not CLK,
				wea 	=> EXMEM_WREN,
				addra => EXMEM_ADR(13 downto 0),
				dina 	=> RA_OUT,
				douta => EXMEM_OUT);
	
	with OP3 select ALUMUX_OUT <=
		EXMEM_OUT	when "1011",
		ALU_VAL		when OTHERS;
		
		-- Added OP Code pipeline registers so DC CTL
		-- doesn't compare non address addresses
	
	BranchPredict: entity work.BranchPredictor
	port map(CLK 			=> CLK,
				ALUBranch 	=> ALU_BRANCH,
				OPC1 			=> OP1,
				OPC3 			=> OP3,
				OFFSET		=> OFF2,
				PC4_DATIN	=> PC4,
				PC4_DATOUT	=> FETCH_BRANCH,
				VALID			=> CORRECT_SIG,
				Branch 		=> BRANCH_SIG);
				
	--------  Pipeline Registers  --------
	--------------------------------------
	
	----> Stage One <----
	OP1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> OPIN,
					Dout	=> OP1);
	
	RA1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RAIN,
					Dout	=> RA1);
	
	RB1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RBIN,
					Dout	=> RB1);
					
	IMM1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 8)
	port map( 	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> IMMIN,
					Dout	=> IMM1);
	
	PC1_Reg:	entity work.PipelineRegisters
	generic map( dataWidth => 5)
	port map(	Clk 	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> PC0,
					Dout	=> PC1);
	
	----> Stage Two <----
	OP2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> OP1,
					Dout	=> OP2);
	
	RA2ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RA1,
					Dout	=> RA2);
					
	RB2ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> RB1,
					Dout	=> RB2);
	
	OPR0_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 8)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> IMM1,
					Dout	=> IMM2);
	
--	OPR1_Reg: entity work.PipelineRegisters
--	generic map( dataWidth => 16)
--	port map(	Clk	=> CLK,
--					Ena	=> GLOBAL_EN,
--					Rst 	=> RST,
--					Din 	=> F2OPR1,
--					Dout	=> S3OPR1);
	
--	OPR2_Reg: entity work.PipelineRegisters
--	generic map( dataWidth => 16)
--	port map(	Clk	=> CLK,
--					Ena	=> GLOBAL_EN,
--					Rst 	=> RST,
--					Din 	=> F2OPR2,
--					Dout	=> S3OPR2);
					
	PC2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 5)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> PC1,
					Dout	=> PC2);
	
	----> Stage Three <----
	RA3ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> RA2,
					Dout	=> RA3);
		
	RB3ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> RB2,
					Dout	=> RB3);
	
	PC3_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 5)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> PC2,
					Dout	=> PC3);
					
	OP3_Reg: entity work.PipelineRegisters
	generic map( datawidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> OP2,
					Dout	=> OP3);
	
	RA_DATA: entity work.PipelineRegisters
	generic map( datawidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> OPR1,
					Dout	=> RA_IN);
	
	RB_DATA: entity work.PipelineRegisters
	generic map( datawidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> OPRB,
					Dout	=> RB_IN);
					
	OFFSET_DATA1: entity work.PipelineRegisters
	generic map( datawidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> IMM2(3 downto 0),
					Dout	=> OFF1);
	
	----> Stage Four <----
	RA4ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena 	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> RA3,
					Dout	=> RA4);
					
--	RB4ADR_Reg: entity work.PipelineRegisters
--	generic map( dataWidth => 4)
--	port map(	Clk	=> CLK,
--					Ena	=> GLOBAL_EN,
--					Rst	=> RST,
--					Din	=> RB3,
--					Dout	=> RB4);
	
	PC4_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 5)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> PC3,
					Dout	=> PC4);
	
	ALU_OUT_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map( 	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> ALUMUX_OUT,
					Dout	=> ALU_RESULT);
	
	ALU_FLAGS_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> ALU_OUT_FLAGS,
					Dout	=> ALU_FLAGS);
	
	OP4_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> OP3,
					Dout	=> OP4);
					
	OFFSET_DATA2: entity work.PipelineRegisters
	generic map( datawidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> OFF1,
					Dout	=> OFF2);
	
	----> DC Stage 1 <----
	ALU_OUT1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> ALU_RESULT,
					Dout	=> ALU_DC1);
	
	RA_DC1_Reg:	entity work.PipelineRegisters
	generic map( dataWidth	=> 4)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> RA4,
					Dout	=> RA_DC1);
	
--	RB_DC1_Reg: entity work.PipelineRegisters
--	generic map( dataWidth => 4)
--	port map(	Clk	=> CLK,
--					Ena	=> GLOBAL_EN,
--					Rst	=> RST,
--					Din	=> RB4,
--					Dout	=> RB_DC1);
	
	OP_DC1_Reg: entitY work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(Clk	=> CLK,
				Ena	=> NOT STALL_SIG,
				Rst	=> RST,
				Din	=> OP4,
				Dout	=> OP_DC1);
	
	----> DC Stage 2 <----
	ALU_OUT2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk 	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> ALU_DC1,
					Dout	=> ALU_DC2);
	
	RA_DC2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> NOT STALL_SIG,
					Rst	=> RST,
					Din	=> RA_DC1,
					Dout	=> RA_DC2);
	
--	RB_DC2_Reg: entity work.PipelineRegisters
--	generic map( dataWidth => 4)
--	port map(	Clk	=> CLK,
--					Ena	=> GLOBAL_EN,
--					Rst	=> RST,
--					Din	=> RB_DC1,
--					Dout	=> RB_DC2);
					
	OP_DC2_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(Clk	=> CLK,
				Ena	=> NOT STALL_SIG,
				Rst	=> RST,
				Din	=> OP_DC1,
				Dout	=> OP_DC2);
					
	--------  Immediate Select Mux  --------
	----------------------------------------
	with IMSEL select OPRB <=
		x"00" & IMM2 when '1',
		OPR2 when OTHERS;
					
	--------  Memory Entities  --------
	-----------------------------------
	
--	ProgCounter: entity work.programCounter
--	generic map(PCWIDTH 	=> 5)
--	port map(	CLK		=> CLK,
--					EN			=> PC_EN,
--					RST		=> RST,
--					INSADR	=> PC0);

	RegisterBank_Unit: entity work.RegisterBank
	port map(	RST		=> RST,
					RAddr		=> RA1,
					RBddr 	=> RB1,
					RWddr 	=> RA4,
					DATAIN	=> ALU_RESULT,
					clk 		=> CLK,
					R 			=> RD_EN,
					W 			=> WR_EN,
					RAout 	=> OPR1,
					RBout 	=> OPR2);
					
	--------  Branching Entities  --------
	-----------------------------------
	
	StallModuleControl: entity work.StallModuleControl
	port map(	CLK 	 => CLK,
					BRANCH  => BRANCH_SIG,
					CORRECTION => CORRECT_SIG,
					STALL  => STALL_SIG);
	
	--------  Data Contention Handler  --------
	-------------------------------------------
	
	with OP1_SEL select RA_OUT <=
		ALU_RESULT	when "001",
		ALU_DC1		when "010",
		ALU_DC2		when "011",
		X"000" & RA3	when "100",
		RA_IN			when OTHERS;
	
	with OP2_SEL select RB_OUT <=
		ALU_RESUlt 	when "01",
		ALU_DC1		when "10",
		ALU_DC2		when "11",
		RB_IN			when OTHERS;

end Structural;

