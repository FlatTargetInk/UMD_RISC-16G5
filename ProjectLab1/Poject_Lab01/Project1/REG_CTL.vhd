----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:44 03/25/2016 
-- Design Name: 
-- Module Name:    REG_CTL - Behavioral 
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

entity REG_CTL is
    Port ( CLK : in  STD_LOGIC;
           OPC : in  STD_LOGIC_VECTOR (3 downto 0);
           OPC4 : in  STD_LOGIC_VECTOR (3 downto 0);
			  RD_EN : out  STD_LOGIC;
           WR_EN : out  STD_LOGIC);
end REG_CTL;

architecture Dataflow of REG_CTL is
begin
	with OPC select RD_EN <=
		'1' when "0000" | "0001" | "0010" | "0011" | "0100" | "0101" | "0110" | "0111" | "1000" | "1001" | "1010",
		'0' when OTHERS;
	
	with OPC4 select WR_EN <= 
		'1' when "0000" | "0001" | "0010" | "0011" | "0100" | "0101" | "0110" | "0111" | "1000" | "1001",
		'0' when OTHERS;

end Dataflow;

--architecture Behavioral of REG_CTL is
--
--begin
--	process(CLK)
--		begin
--		if (rising_edge(CLK)) then
--			case OPC is
--				when "0000" => RD_EN <= '1';
--				when "0001" => RD_EN <= '1';
--				when "0010" => RD_EN <= '1';
--				when "0011" => RD_EN <= '1';
--				when "0100" => RD_EN <= '1';
--				when "0101" => RD_EN <= '1';
--				when "0110" => RD_EN <= '1';
--				when "0111" => RD_EN <= '1';
--				when "1000" => RD_EN <= '1';
--				when "1001" => RD_EN <= '1';
--				when others => RD_EN <= '0';
--			end case;
--		end if;
--			
----			if (OPC = "1001") then
----				RD_EN <= '0';
----			else
----				RD_EN <= '1';
----			end if;
--		if (falling_edge(CLK)) then
--			case OPC4 is
--				when "0000" => WR_EN <= '1';
--				when "0001" => WR_EN <= '1'; 
--				when "0010" => WR_EN <= '1';
--				when "0011" => WR_EN <= '1';
--				when "0100" => WR_EN <= '1';
--				when "0101" => WR_EN <= '1';
--				when "0110" => WR_EN <= '1';
--				when "0111" => WR_EN <= '1';
--				when "1000" => WR_EN <= '1';
--				when "1010" => WR_EN <= '1';
--				when others => WR_EN <= '0';
--			end case;
--				
----			if (OPC4 = "1010") then
----				WR_EN <= '0';
----			else
----				WR_EN <= '1';
----			end if;
--		end if;
--	end process;
--
--end Behavioral;
--
