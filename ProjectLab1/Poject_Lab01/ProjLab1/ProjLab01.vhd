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
           ALU_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           DST_ADR : out  STD_LOGIC_VECTOR (15 downto 0);
           STORE_DATA : out  STD_LOGIC_VECTOR (15 downto 0);
           CCR : out  STD_LOGIC_VECTOR (3 downto 0));
end ProjLab01;


architecture Structural of ProjLab01 is
	signal OP1, OP2, OP3, OP4	  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RA1, RA2, RA3, RA4	  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RB1, RB2, RB3, RB4	  : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal PC1,	PC2, PC3, PC4	  : STD_LOGIC_VECTOR (4 downto 0) := (OTHERS => '0');
	signal IM1, IM2, IM3			  : STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal GLOBAL_EN 				  : STD_LOGIC := '1'; -- Determines whether things are enabled (allowed to operate)
	signal IMM_SEL 				  : STD_LOGIC := '0'; -- Determines selection between immediate data and RB
	signal DC2_1, DC2_2 			  : STD_LOGIC := '0'; -- 
	signal PC_EN, PC_RST, PC_INC : STD_LOGIC := '0'; -- Program counter enable
	signal INST_EN 				  : STD_LOGIC := '1'; -- Enables instruction memory
	signal RD_EN, WR_EN 			  : STD_LOGIC := '0'; -- Enables the register bank to read, write
	signal OP1_SEL, OP2_SEL 	  : STD_LOGIC := '0'; -- Used for data contention ctrl (DC_CTL) to drive select lines on two muxes
	
	signal OPIN	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RAIN	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RBIN	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	
	signal RGBK1, RGBK2	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Outputs from the Register Bank
	signal F2OPR1,F2OPR2	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Outputs from Stage Two data contention muxes
	signal S3OPR1,S3OPR2	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Before stage three data contention muxes
	signal ALU_RESULT		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Latched Result of ALU
	signal ALU_VAL			: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Result direct from ALU
	signal RA_IN, RB_IN	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Values to go directly to ALU
	signal RB_INT			: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');	-- Between Immediate Select and Stage Three DC Mux

begin
	ALU_OUT <= ALU_RESULT;

	DISPTCH 	: entity work.Dispatch port map(CLK => CLK, -- (in)
														  OPC => OP2, -- (in)
														  RA  => RA2, -- (in)
														  RB  => RB2, -- (in)
														  RA4 => RA4, -- (in)
													 IMM_SEL => IMM_SEL, -- (out)
														  DC1 => DC2_1, -- (out)
														  DC2 => DC2_2); -- Dispatch control unit (out)
	
	FETCH 	: entity work.Fetch_CTL port map(CLK => CLK, -- (in)
															 EN => GLOBAL_EN, -- (in)
															RST => PC_RST, -- (out)
															INC => PC_INC, -- (out)
														 PC_EN => PC_EN, -- (out)
													  INST_EN => INST_EN); -- Fetch control unit (out)
												  
	REGCTL	: entity work.REG_CTL port map(CLK => CLK, -- (in)
														 OPC => OP1, -- (in)
													   OPC4 => OP4, -- (in)
													  RD_EN => RD_EN, -- (out)
													  WR_EN => WR_EN); -- Register control unit (out)
											  
	DCCTL 	: entity work.DC_CTL port map(CLK => CLK, -- (in)
														 RA => RA1, -- (in)
														 RB => RB1, -- (in)
														OPC => OP1, -- (in)
														RA4 => RA4, -- (in)
												  OP1_SEL => OP1_SEL, -- (out)
												  OP2_SEL => OP2_SEL); -- Data contention (out)
												  
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
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RAIN,
					Dout	=> RA1);
	
	RB1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RBIN,
					Dout	=> RB1);
	
	----> Stage Two <----
	OP2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> OP1,
					Dout	=> OP2);
	
	RA2ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RA1,
					Dout	=> RA2);
	
	OPR0_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> RB1 (7 downto 0),
					Dout	=> RB1);
	
	OPR1_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> F2OPR1,
					Dout	=> S3OPR1);
	
	OPR2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst 	=> RST,
					Din 	=> F2OPR2,
					Dout	=> S3OPR2);
					
	PC2_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 5)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> PC1,
					Dout	=> PC2);
	
	----> Stage Three <----
	RA3ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> RA2,
					Dout	=> RA3);
	
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
	
	----> Stage Four <----
	RA4ADR_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map(	Clk	=> CLK,
					Ena 	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> RA3,
					Dout	=> RA4);
	
	PC4_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 4)
	port map(	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> PC3,
					Dout	=> PC4);
	
	ALU_OUT_Reg: entity work.PipelineRegisters
	generic map( dataWidth => 16)
	port map( 	Clk	=> CLK,
					Ena	=> GLOBAL_EN,
					Rst	=> RST,
					Din	=> 
	
	--------  Data Contention Handler  --------
	-------------------------------------------
	
	----< Stage 2 >----
	with OP1_SEL select F2OPR1 <=
		ALU_VAL 	when '1',
		RGBK1 	when OTHERS;
	
	with OP2_SEL select F2OPR2 <=
		ALU_VAL 	when '1',
		RGBK2 	when OTHERS;
	
	----< Stage 3 >----
	with DC2_1 select RA_IN <=
		ALU_VAL	when '1',
		S3OPR1	when OTHERS;
	
	with DC2_2 select RB_INT <=
		ALU_VAL 	when '1',
		S3OPR3	when OTHERS;

end Structural;

