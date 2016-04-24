-- Company: Team 5
-- Engineer: 
--			-Timothy Doucette Jr
--			-Robert Mushrall III
--			-Christopher Parks
-- 
-- Create Date:    14:26:47 03/31/2016 
-- Design Name: 
-- Module Name:    Instruction_Memory_TL - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Memory_TL is
	generic(PCWIDTH:integer := 5);
   Port (CLK 		: in STD_LOGIC;
			RST		: in STD_LOGIC;
			BRANCH	: in STD_LOGIC;
			BRNCH_ADR: in STD_LOGIC_VECTOR(PCWIDTH-1 downto 0);
			RA 		: out  STD_LOGIC_VECTOR (3 downto 0);
         RB 		: out  STD_LOGIC_VECTOR (3 downto 0);
         OP 		: out  STD_LOGIC_VECTOR (3 downto 0);
         IMM 		: out  STD_LOGIC_VECTOR (7 downto 0));
end Instruction_Memory_TL;

architecture Structural of Instruction_Memory_TL is

--Program counter
signal EN :   STD_LOGIC := '1';
--signal RST :  STD_LOGIC := '0';
signal INSADR 	: STD_LOGIC_VECTOR (PCWIDTH-1 downto 0) := (OTHERS => '0');
signal MODE		: STD_LOGIC_VECTOR (2 downto 0) := (OTHERS => '0');
signal STACKEN	: STD_LOGIC := '0';

--INSTRUCTION MEMORY--
signal CRNT_ADR : STD_LOGIC_VECTOR (PCWIDTH-1 downto 0) 	:= (OTHERS => '0');
signal NEXT_ADDR : STD_LOGIC_VECTOR (PCWIDTH-1 downto 0)	:= (OTHERS => '0');
signal ZERO_ADR : STD_LOGIC_VECTOR (PCWIDTH-1 downto 0)	:= (OTHERS => '0');
signal INC_ADR	: STD_LOGIC_VECTOR (PCWIDTH-1 downto 0)	:= (OTHERS => '0');
signal OFS_ADR	: STD_LOGIC_VECTOR (PCWIDTH-1 downto 0)	:= (OTHERS => '0');
signal POP_ADR	: STD_LOGIC_VECTOR (PCWIDTH-1 downto 0) 	:= (OTHERS => '0');
signal DINA : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal WEA	: STD_LOGIC := '0';
signal DOUTA : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');



begin
	
	OP <= DOUTA(15 downto 12);
	RA <= DOUTA(11 downto 8);
	RB <= DOUTA(7 downto 4);
	IMM <= DOUTA(7 downto 0);

--	U1: entity work.programCounter
--		generic map(PCWIDTH => 5)
--		port map(CLK 		=> CLK,
--					EN 		=> EN,
--					OPMODE	=> MODE,
--					OFFSET	=> DOUTA(11 downto 0), -- OFFSET,
--					INSADR 	=> ADDRA);

	----> Components <----
	PCINC: entity work.PC_INC
		generic map(PCWIDTH => 5)
		port map(CURNT_ADR 	=> CRNT_ADR,
					NEXT_ADR		=> INC_ADR);
	
	PCOFS: entity work.PC_OFFSET
		generic map(PCWIDTH => 5)
		port map(CUR_ADR	=> CRNT_ADR,
					OFFSET	=> DOUTA(PCWIDTH-1 downto 0),	-- OFFSET
					NEW_ADR	=> OFS_ADR);
	
	PCSTK: entity work.SH_PCREG
		generic map(PCWIDTH => 5,
						STACKDEPTH => 4)
		port map(CLK		=> CLK,
					RST		=> RST,
					ADRIN		=> INC_ADR,
					EN			=> STACKEN,
					WR			=> DOUTA(12),	-- '1' is Push, '0' is Pop
					ADROUT	=> POP_ADR);
--					OVFLW		: out STD_LOGIC

	ADR_LTCH: entity work.ADR_LATCH
		generic map(PCWIDTH => 5)
		port map(CLK	=> CLK,
					RST	=> RST,
					ADRIN	=> NEXT_ADDR,
					ADOUT	=> CRNT_ADR);
						
	
	U2: entity work.Instr_Mem
		port map(CLKA 	=> not CLK,
					ADDRA => CRNT_ADR,
					DINA 	=> DINA,
					WEA(0) => WEA,
					DOUTA => DOUTA);
	
	----> JAL/RTL Controller <----
	MODE <= 	"000" when RST = '1' else
				"100" when BRANCH = '1' else
				"010" when DOUTA(15 downto 12) = "1101" else -- JMP = '1' else
				"011" when DOUTA(15 downto 12) = "1110" else -- RTN = '1' else
				"001";
	
	with DOUTA(15 downto 12) select STACKEN <=
		'1' when "1101" | "1110",
		'0' when OTHERS;
	
	with MODE select NEXT_ADDR <=
		ZERO_ADR		when "000",
		OFS_ADR		when "010",
		POP_ADR		when "011",
		BRNCH_ADR	when "100",
		INC_ADR		when OTHERS;
		
			
end Structural;