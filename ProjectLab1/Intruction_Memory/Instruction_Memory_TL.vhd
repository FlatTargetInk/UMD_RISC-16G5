----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:47 03/31/2016 
-- Design Name: 
-- Module Name:    Instruction_Memory_TL - Behavioral 
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

entity Instruction_Memory_TL is
    Port ( INSTR : in  STD_LOGIC_VECTOR (20 downto 0);
           RA : out  STD_LOGIC_VECTOR (3 downto 0);
           RB : out  STD_LOGIC_VECTOR (3 downto 0);
           OP : out  STD_LOGIC_VECTOR (3 downto 0);
           IMM : out  STD_LOGIC_VECTOR (7 downto 0));
end Instruction_Memory_TL;

architecture Structural of Instruction_Memory_TL is

begin
	


end Structural;

