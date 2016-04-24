----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:07 04/13/2016 
-- Design Name: 
-- Module Name:    Shadow_IMM_Add - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;	--Using Unsigned for output

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shadow_IMM_Add is
    Port ( SHADOW : in  STD_LOGIC_VECTOR (15 downto 0);
           IMM : in  STD_LOGIC_VECTOR (3 downto 0);
           EX_ADDR : out  STD_LOGIC_VECTOR (13 downto 0));
end Shadow_IMM_Add;

architecture Behavioral of Shadow_IMM_Add is

signal RESULT : STD_LOGIC_VECTOR(13 downto 0) := (OTHERS => '0');

begin

RESULT <= SHADOW(13 downto 0) + IMM;
EX_ADDR <= RESULT;


end Behavioral;

