----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:35 04/22/2016 
-- Design Name: 
-- Module Name:    PC_INC - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_INC is
	generic(PCWIDTH:integer:=16);
	Port (CURNT_ADR 	: in STD_LOGIC_VECTOR (PCWIDTH-1 downto 0);
			NEXT_ADR		: out STD_LOGIC_VECTOR (PCWIDTH-1 downto 0));
end PC_INC;

architecture Combinational of PC_INC is
begin
	NEXT_ADR <= CURNT_ADR + 1;

end Combinational;

