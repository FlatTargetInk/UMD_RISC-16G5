----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:46 03/25/2016 
-- Design Name: 
-- Module Name:    Fetch_CTL - Behavioral 
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

entity Fetch_CTL is
    Port ( CLK : in STD_LOGIC;
			  EN : in  STD_LOGIC;
           RST : out  STD_LOGIC;
           INC : out  STD_LOGIC;
           PC_EN : out  STD_LOGIC;
			  INST_EN : out  STD_LOGIC);
end Fetch_CTL;

architecture Behavioral of Fetch_CTL is

begin
	RST <= '0';
	INC <= '1';
	PC_EN <= '1';
	INST_EN <= '1';
	
	

end Behavioral;

