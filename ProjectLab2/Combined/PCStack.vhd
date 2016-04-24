----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:53 04/11/2016 
-- Design Name: 
-- Module Name:    PCStack - Behavioral 
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

entity PCStack is
	 generic(PCWIDTH:integer:=16);
    Port ( EN : in  STD_LOGIC;
           OP : in  STD_LOGIC;
           INADR : in  STD_LOGIC_VECTOR (PCWIDTH-1 downto 0);
           OUTADR : in  STD_LOGIC_VECTOR (PCWIDTH-1 downto 0));
end PCStack;

architecture Behavioral of PCStack is

begin
	process(EN)
	begin
		if(EN = '1') then
			case OP is
				when '0' => 
				when '1' => 
				when OTHERS => 
			end case;
		end if;
	end process;
end Behavioral;

