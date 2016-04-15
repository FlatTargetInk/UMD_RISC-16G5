----------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks
-- 
-- Create Date:    14:48:45 04/11/2016 
-- Module Name:    ProgramCounter - Behavioral 
-- Description: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity ProgramCounter is
	 generic(PCWIDTH:integer:=16);
    Port ( CLK : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           OPMODE : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bits long
			  OFFSET : in STD_LOGIC_VECTOR (11 downto 0);
           INSADR : out  STD_LOGIC_VECTOR (PCWIDTH-1 downto 0));
end ProgramCounter;

 architecture Behavioral of ProgramCounter is
signal STR0, STR1, STR2, STR3, COUNTER : STD_LOGIC_VECTOR(PCWIDTH-1 downto 0) := (OTHERS => '0');
--signal JMPDEPTH : STD_LOGIC_UNSIGNED(1 downto 0) := (OTHERS => '0');
begin
INSADR <= COUNTER;
	process(CLK)
	begin
		if(clk'EVENT and clk = '0' AND EN = '1') then	
			case OPMODE is -- OPMODE MULTIPLEXING: 00 RESET, 01 PC+1, 10 PC+OFFSET, 11 RTL, OTHERS PC+1
				when "00" => COUNTER <= (OTHERS => '0');
				when "01" => COUNTER <= COUNTER+1;
				when "10" =>
					STR3 <= STR2; -- Push to stack shift registers
					STR2 <= STR1;
					STR1 <= STR0;
					STR0 <= COUNTER+1;
					COUNTER <= COUNTER+OFFSET(4 downto 0);
				when "11" =>
					COUNTER <= STR0;
					STR0 <= STR1;
					STR1 <= STR2;
					STR2 <= STR3;
					STR3 <= (OTHERS => '0');
				when OTHERS => COUNTER <= COUNTER+1;
			end case;
		end if;
	end process;

end Behavioral;

