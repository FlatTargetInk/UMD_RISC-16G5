----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:37:34 03/28/2016 
-- Design Name: 
-- Module Name:    logical_unit - Behavioral 
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

entity logical_unit is
    Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
           OP : in  STD_LOGIC_VECTOR (2 downto 0);
           LOG_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           SREG_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end logical_unit;

architecture Combinational of logical_unit is

signal result 	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal zro		: STD_LOGIC	:= '0';

begin
	
	with OP select
		result <=
			RA or RB 	when "011",	-- OR
			RA and RB 	when "010",	-- AND
			RA and RB	when "110",	-- ANDI
			RB				when "100",	-- MOV
			RA or RB		when OTHERS;	-- SAFE (I guess)
	
	zro <= '1' when result(15 downto 0) = x"00000000" else '0';	-- Zero
	
	LOG_OUT <= result;
	SREG_OUT <= '0' & zro & "00";

end Combinational;

