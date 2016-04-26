----------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks (cparks13@live.com)
-- 
-- Create Date:    15:30:00 04/22/2016 
-- Module Name:    jump_unit - Behavioral 
-- Target Devices: Spartan3E XC3S500E-4FG320
-- Description: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity jump_unit is
    Port ( CLK 	: in  STD_LOGIC;
           OP 		: in  STD_LOGIC_VECTOR (3 downto 0);
			  CCR 	: in STD_LOGIC_VECTOR(3 downto 0);
           MASK 	: in  STD_LOGIC_VECTOR (3 downto 0);
           IMMD 	: in  STD_LOGIC_VECTOR (15 downto 0);
			  BRSIG 	: out STD_LOGIC);
end jump_unit;

architecture Combinational of jump_unit is

begin
BRSIG <= '1' when OP = x"F" and MASK = CCR else
			'0';
end Combinational;

