----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:23:05 03/25/2016 
-- Design Name: 
-- Module Name:    Dispatch - Behavioral 
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

entity Dispatch is
    Port ( CLK : in  STD_LOGIC;
           OPC : in  STD_LOGIC_VECTOR (3 downto 0);
			  RA	: in 	STD_LOGIC_VECTOR (3 downto 0);
			  RB	: in	STD_LOGIC_VECTOR (3 downto 0);
           RA4 : in  STD_LOGIC_VECTOR (3 downto 0);
           IMM_SEL : out  STD_LOGIC;
           DC1 : out  STD_LOGIC;
           DC2 : out  STD_LOGIC);
end Dispatch;

architecture Behavioral of Dispatch is

begin
process(CLK)
begin
	if(rising_edge(CLK)) then
		case OPC is
			when "0000" => IMM_SEL <= '0';
			when "0001" => IMM_SEL <= '0';
			when "0010" => IMM_SEL <= '0';
			when "0011" => IMM_SEL <= '0';
			when "0100" => IMM_SEL <= '0';
			when "0101" => IMM_SEL <= '1';
			when "0110" => IMM_SEL <= '1';
			when "0111" => IMM_SEL <= '1';
			when "1000" => IMM_SEL <= '1';
			when "1001" => IMM_SEL <= '1';
			when "1010" => IMM_SEL <= '1';
			when others => IMM_SEL <= '0';
		end case;
		
--		case RA is
--			when RA4 => DC1 <= '1';
--			when others => DC1 <= '0';
--		end case;
--		
--		case RB is
--			when RA4 => DC2 <= '1';
--			when others => DC2 <= '0';
--		end case;
		
		if(RA = RA4) then
			DC1 <= '1';
		else
			DC1 <= '0';
		end if;
		if(RB = RA4) then
			DC2 <= '1';
		else
			DC2 <= '0';
		end if;
	end if;
end process;

end Behavioral;

