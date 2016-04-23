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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Memory_TL is
    Port ( CLK : in STD_LOGIC;
			  RST	: in STD_LOGIC;
			  RA : out  STD_LOGIC_VECTOR (3 downto 0);
           RB : out  STD_LOGIC_VECTOR (3 downto 0);
           OP : out  STD_LOGIC_VECTOR (3 downto 0);
           IMM : out  STD_LOGIC_VECTOR (7 downto 0));
end Instruction_Memory_TL;

architecture Structural of Instruction_Memory_TL is

--Program counter
signal EN :   STD_LOGIC := '1';
--signal RST :  STD_LOGIC := '0';
signal INSADR :STD_LOGIC_VECTOR (4 downto 0) := (OTHERS => '0');

--INSTRUCTION MEMORY--
signal ADDRA : STD_LOGIC_VECTOR (4 downto 0) := (OTHERS => '0');
signal DINA : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal WEA: STD_LOGIC := '0';
signal DOUTA : STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');



begin
	
	OP <= DOUTA(15 downto 12);
	RA <= DOUTA(11 downto 8);
	RB <= DOUTA(7 downto 4);
	IMM <= DOUTA(7 downto 0);

	U1: entity work.programCounter
		generic map(PCWIDTH => 5)
		port map(CLK => CLK,
					EN => EN,
					RST => RST,
					INSADR => ADDRA);
		
	U2: entity work.Instr_Mem
		port map(CLKA => not CLK,
					ADDRA => ADDRA ,
					DINA => DINA,
					WEA(0) => WEA,
					DOUTA => DOUTA);

end Structural;