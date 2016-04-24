----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:29:49 03/30/2016 
-- Design Name: 
-- Module Name:    DATA_CTL - Behavioral 
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

entity EX_MEM_CTL is
    Port ( 	CLK	: in STD_LOGIC;
				EN		: in STD_LOGIC;
				OP		: in  STD_LOGIC_VECTOR (3 downto 0);
				RD_EN	: out  STD_LOGIC_VECTOR (0 downto 0);
				WR_EN	: out  STD_LOGIC_VECTOR (0 downto 0));
end EX_MEM_CTL;

architecture Behavioral of EX_MEM_CTL is
signal RD, WR : STD_LOGIC_VECTOR (0 downto 0) := "0";

begin
	RD_EN <= RD;
	WR_EN <= WR;
	process(CLK)
	begin
		if(EN = '0') then
			RD <= "0";
			WR <= "0";
		elsif(rising_edge(CLK) and EN ='1') then
			case OP is
				when "1011" => RD <= "1";
									WR <= "0";
				when "1100" => RD <= "0";
									WR <= "1";
				when OTHERS => RD <= "0";
									WR <= "0";
			end case;
		end if;
	end process;
	
end Behavioral;
