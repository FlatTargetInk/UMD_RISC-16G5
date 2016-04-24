----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:23 03/28/2016 
-- Design Name: 
-- Module Name:    shift_unit - Behavioral 
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

entity shift_unit is
    Port ( RA 			: in  STD_LOGIC_VECTOR (15 downto 0);
           SHIFT 		: in  STD_LOGIC_VECTOR (7 downto 0);
           OP 			: in  STD_LOGIC;
           SHIFT_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           SREG_OUT 	: out  STD_LOGIC_VECTOR (3 downto 0));
end shift_unit;

architecture Combinational of shift_unit is

signal shift_left, shift_right, shift_result : std_logic_vector (23 downto 0) := (OTHERS => '0');
signal sreg : std_logic_vector (3 downto 0) := (OTHERS => '0');
signal a : std_logic_vector (23 downto 0);

begin
	
	a <= X"00" & RA;
	
	shift_left <= to_stdlogicvector(to_bitvector(a) sll conv_integer(SHIFT));
	shift_right <= to_stdlogicvector(to_bitvector(a) srl conv_integer(SHIFT));
	shift_result <= shift_left when OP='0' else shift_right;
	
	--SREG(3) <= RESULT(7); -- Negative with signed logic
	sreg(2) <= '1' when shift_result(15 downto 0) = x"00000000" else '0';	-- Zero
	--SREG(1) <= RESULT(8) xor RESULT(7);	-- Overflow with signed logic
	sreg(0) <= shift_result(16) or shift_result(17) or shift_result(18) or shift_result(19) or shift_result(20) or shift_result(21) or shift_result(22) or shift_result(23); -- Carry
	
	SHIFT_OUT <= shift_result (15 downto 0);
	SREG_OUT <= sreg;
	
end Combinational;

