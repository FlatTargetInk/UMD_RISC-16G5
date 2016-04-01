----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:19 03/30/2016 
-- Design Name: 
-- Module Name:    IMSEL - Behavioral 
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

entity IMSEL is
    Port ( OP 		: in  STD_LOGIC_VECTOR (3 downto 0);
           SEL_IM : out  STD_LOGIC);
end IMSEL;

architecture Dataflow of IMSEL is
	signal IM_SELECT : STD_LOGIC := '0';
	
begin
	with OP select IM_SELECT <=
		'1' when "0101" | "0110" | "0111" | "1000" | "1001" | "1010",
		'0' when OTHERS;
		

end Dataflow;

