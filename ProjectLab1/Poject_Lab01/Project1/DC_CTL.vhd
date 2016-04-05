----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:59 03/25/2016 
-- Design Name: 
-- Module Name:    DC_CTL - Behavioral 
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

entity DC_CTL is
    Port ( CLK : in  STD_LOGIC;
           RA 	: in  STD_LOGIC_VECTOR (3 downto 0);
			  RB 	: in STD_LOGIC_VECTOR (3 downto 0);
			  RA0	: in STD_LOGIC_VECTOR (3 downto 0);
           RA1	: in STD_LOGIC_VECTOR (3 downto 0);
			  RA2	: in STD_LOGIC_VECTOR (3 downto 0);
--			  RB0 : in STD_LOGIC_VECTOR (3 downto 0);
--			  RB1	: in STD_LOGIC_VECTOR (3 downto 0);
--			  RB2	: in STD_LOGIC_VECTOR (3 downto 0);
           OPC : in  STD_LOGIC_VECTOR (3 downto 0);
			  OP1_SEL : out  STD_LOGIC_VECTOR (1 downto 0);
           OP2_SEL : out  STD_LOGIC_VECTOR (1 downto 0));
end DC_CTL;

architecture Mixed of DC_CTL is

signal OP1, OP2 : STD_LOGIC_VECTOR (1 downto 0) := (OTHERS => '0');

begin
	
	process(RA, RB, RA0, RA1, RA2)
	begin
		if (rising_edge(CLK)) then
			if (RA = RA0) then
				OP1 <= "01";
			elsif (RA = RA1) then
				OP1 <= "10";
			elsif (RA = RA2) then
				OP1 <= "11";
			else
				OP1 <= "00";
			end if;
			
			if (RB = RA0) then
				OP2 <= "01";
			elsif (RB = RA1) then
				OP2 <= "10";
			elsif (RB = RA2) then
				OP2 <= "11";
			else
				OP2 <= "00";
			end if;
			
		end if;
		
	end process;

	OP1_SEL <= OP1;
	
	with OPC select OP2_SEL <=
		"00" 	when "0101" | "0110" | "0111" | "1000" | "1001" | "1010",
		OP2	when OTHERS;

end Mixed;

