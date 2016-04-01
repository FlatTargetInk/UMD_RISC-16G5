----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:20:02 03/28/2016 
-- Design Name: 
-- Module Name:    arith_unit - Behavioral 
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

entity arith_unit is
    Port (	RA 		: in  STD_LOGIC_VECTOR (15 downto 0);
				RB 		: in  STD_LOGIC_VECTOR (15 downto 0);
				OP 		: in  STD_LOGIC_VECTOR (2 downto 0);
				AR_OUT 	: out STD_LOGIC_VECTOR (15 downto 0);
				SREG_OUT	: out STD_LOGIC_VECTOR (3 downto 0));
end arith_unit;

architecture Combinational of arith_unit is

signal a,b		: STD_LOGIC_VECTOR (16 downto 0) := (OTHERS => '0');
signal RESULT	: STD_LOGIC_VECTOR (16 downto 0) := (OTHERS => '0');
signal SREG		: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');

begin

	a <= '0' & RA;
	b <= '0' & RB;
	
	with OP select
		RESULT <=
			a + b when "000",	-- ADD
			a - b when "001",	-- SUB
			a + b when "101",	-- ADDI
			'0' & X"0000" when OTHERS;
	SREG(3) <= RESULT(15); -- Negative with signed logic
	SREG(2) <= '1' when RESULT(15 downto 0) = x"00000000" else '1';	-- Zero
	SREG(1) <= RESULT(16) xor RESULT(15);	-- Overflow with signed logic
	SREG(0) <= RESULT(16); -- Carry
	
	SREG_OUT <= SREG;
	AR_OUT <= RESULT(15 downto 0);

end Combinational;

