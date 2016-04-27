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
			  BRANCH : in STD_LOGIC;
			  CORRECTION : in STD_LOGIC;
           STALL : out  STD_LOGIC);
end StallModuleControl;

architecture Behavioral of StallModuleControl is
signal NUM_STALL_CYCLES : unsigned(2 downto 0) := "000"; -- Maximum of 4
signal DELAY			   : unsigned(1 downto 0) := "00"; -- Maximum of 2
signal BRA_CORR			: STD_LOGIC_VECTOR(1 downto 0) := "00"; --Decides when STALL changes state



begin

	BRA_CORR <= BRANCH & CORRECTION;
	process(CLK)
--		VARIABLE DELAY		: integer := 0;	--BRANCH = '1' AND CORRECT = '0' => Delay STALL 2 CLK_cylces
	begin
	
		IF(RISING_EDGE(CLK)) THEN
			IF((NUM_STALL_CYCLES >0) AND (DELAY > 0)) THEN
				STALL <= '0';
				DELAY <= DELAY-1;
			ELSIF((NUM_STALL_CYCLES > 0) AND (DELAY = 0)) THEN
				STALL <= '1';
				NUM_STALL_CYCLES <= NUM_STALL_CYCLES - 1;
			ELSE
				STALL <= '0';
			END IF;
			
		case BRA_CORR is
				when "11" => DELAY <="00";
								 NUM_STALL_CYCLES <= "100";
				when "10" => DELAY <= "10";
								 NUM_STALL_CYCLES <= "001";
--				when "01" => NUM_STALL_CYCLES <= "100";
--				when "00" => DELAY := 2;
--								 NUM_STALL_CYCLES <= "001";
				when OTHERS 		=> DELAY <= "00";
											NUM_STALL_CYCLES <= "000";
		end case;
		
--			IF(BRA_CORR = "11") then -- ACTUAL = '1', GUESS = '1'
--				DELAY <= "00";
--				NUM_STALL_CYCLES <= "001"; -- Stall for 1 CLK cycle
--			ELSIF(BRA_CORR = "10") then -- ACTUAL = '1', GUESS = '0' OR ACTUAL = '0', GUESS = '1'
--				DELAY <= "10";
--				NUM_STALL_CYCLES <= "100"; -- Stall for 4 CLK cycles
--			ELSE
--				DELAY <= "00";
--				NUM_STALL_CYCLES <= "000";
--			END IF;

--			IF((BRANCH = '1') AND (CORRECTION = '0')) then -- ACTUAL = '1', GUESS = '1'
--				NUM_STALL_CYCLES <= "001"; -- Stall for 1 CLK cycle
--			ELSIF(CORRECTION = '1') then -- ACTUAL = '1', GUESS = '0' OR ACTUAL = '0', GUESS = '1'
--				NUM_STALL_CYCLES <= "100"; -- Stall for 4 CLK cycles
--			END IF;
		END IF;
	end process;
end Behavioral;