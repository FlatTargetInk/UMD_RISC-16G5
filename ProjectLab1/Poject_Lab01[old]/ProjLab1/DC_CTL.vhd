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
           RA : in  STD_LOGIC_VECTOR (3 downto 0);
           RB : in  STD_LOGIC_VECTOR (3 downto 0);
           OPC : in  STD_LOGIC_VECTOR (3 downto 0);
			  RA4 : in STD_LOGIC_VECTOR (3 downto 0);
           OP1_SEL : out  STD_LOGIC;
           OP2_SEL : out  STD_LOGIC);
end DC_CTL;

architecture Behavioral of DC_CTL is

signal OP1, OP2 : STD_LOGIC := '0';

begin

	OP1_SEL <= OP1;
	OP2_SEL <= OP2;
	process(CLK)
	begin
		if (CLK'Event and CLK = '1') then
--			case RA is
--				when RA4 => OP1 <= '1';
--				when others => OP1 <= '0';
--			end case;
--			
--			case RB is
--				when RA4 => OP2 <= '1';
--				when others => OP2 <= '0';
--			end case;
			
			if (RA4 = RA) then
				OP1 <= '1';
				OP2 <= '0';
			elsif (RA4 = RB) then
				OP2 <= '1';
				OP1 <= '0';
			else
				OP1 <= '0';
				OP2 <= '0';
			end if;
		end if;
	end process;
end Behavioral;

