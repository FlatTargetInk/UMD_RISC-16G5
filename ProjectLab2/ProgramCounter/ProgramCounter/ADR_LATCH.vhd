----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:14 04/23/2016 
-- Design Name: 
-- Module Name:    ADR_LATCH - Behavioral 
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

entity ADR_LATCH is
	generic(PCWIDTH: integer := 5);
	Port (CLK	: in STD_LOGIC;
			RST	: in STD_LOGIC;
			ADRIN	: in STD_LOGIC_VECTOR (PCWIDTH-1 downto 0);
			ADOUT	: out STD_LOGIC_VECTOR (PCWIDTH-1 downto 0));
end ADR_LATCH;

architecture Behavioral of ADR_LATCH is

begin

process(CLK,RST)
begin
	if RST = '1' then
		ADOUT <= (OTHERS => '0');
	elsif (CLK'Event and CLK = '1') then
		ADOUT <= ADRIN;
	end if;
end process;

end Behavioral;

