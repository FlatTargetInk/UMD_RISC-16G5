----------------------------------------------------------------------------------
-- Company: 	Team 5
-- Engineer: 	
-- 
-- Create Date:    15:15:57 03/11/2016 
-- Design Name: 
-- Module Name:    programCounter - Behavioral 
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

entity programCounter is
	generic(PCWIDTH:integer:=16);
    Port ( CLK : in  STD_LOGIC;
           EN : in  STD_LOGIC;
			  RST : in STD_LOGIC;
           INSADR : out  STD_LOGIC_VECTOR (PCWIDTH-1 downto 0));
end programCounter;

architecture Behavioral of programCounter is
signal COUNTER : std_logic_vector(PCWIDTH-1 downto 0) := (OTHERS => '0');
begin
INSADR <= COUNTER;
	process(CLK, RST)
	begin
		if(RST = '1')then
			COUNTER <= (OTHERS => '0');
		end if;
		
		if(CLK'event and CLK = '1')then
			if(EN = '1')then
				COUNTER <= COUNTER + 1;
			end if;
		end if;
	end process;

end Behavioral;

