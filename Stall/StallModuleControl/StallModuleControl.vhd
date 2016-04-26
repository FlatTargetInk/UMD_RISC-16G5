----------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks (cparks13@live.com)
-- 
-- Create Date:    13:45:12 04/25/2016 
-- Module Name:    StallModuleControl - Behavioral 
-- Target Devices: SPARTAN 3E XC3S500E-4FG320 
-- Description: 
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity StallModuleControl is
    Port ( CLK : in  STD_LOGIC;
			  GUESS : in STD_LOGIC;
			  ACTUAL : in STD_LOGIC;
           STALL : out  STD_LOGIC);
end StallModuleControl;

architecture Behavioral of StallModuleControl is
signal NUM_STALL_CYCLES : unsigned(2 downto 0) := "000"; -- Maximum of 4
begin
	process(CLK)
	begin
		IF(RISING_EDGE(CLK)) THEN
			IF(NUM_STALL_CYCLES > 0) THEN
				STALL <= '1';
				NUM_STALL_CYCLES <= NUM_STALL_CYCLES - 1;
			ELSE
				STALL <= '0';
			END IF;
			
			IF((ACTUAL AND GUESS) = '1') then -- ACTUAL = '1', GUESS = '1'
				NUM_STALL_CYCLES <= "001"; -- Stall for 1 CLK cycle
			ELSIF((ACTUAL OR GUESS) = '1') then -- ACTUAL = '1', GUESS = '0' OR ACTUAL = '0', GUESS = '1'
				NUM_STALL_CYCLES <= "100"; -- Stall for 4 CLK cycles
			END IF;
		END IF;
	end process;
end Behavioral;