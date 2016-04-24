----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:12 04/22/2016 
-- Design Name: 
-- Module Name:    PC_OFFSET - Combinational 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_OFFSET is
	generic(PCWIDTH:integer:=16);
	Port (CUR_ADR	: in STD_LOGIC_VECTOR(PCWIDTH-1 downto 0);
			OFFSET	: in STD_LOGIC_VECTOR(PCWIDTH-1 downto 0);
			NEW_ADR	: out STD_LOGIC_VECTOR(PCWIDTH-1 downto 0));
end PC_OFFSET;

architecture Combinational of PC_OFFSET is

begin
	NEW_ADR <= CUR_ADR + OFFSET;

end Combinational;

