----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:40 04/15/2016 
-- Design Name: 
-- Module Name:    UCF_Test_Module - Behavioral 
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
use work.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UCF_Test_Module is port(   SW :  in STD_LOGIC_VECTOR(7 downto 0);
											BTN :  in STD_LOGIC_VECTOR(3 downto 0);
											 JA : out STD_LOGIC_VECTOR(7 downto 0);
											 JB : out STD_LOGIC_VECTOR(7 downto 0);
											 JC : out STD_LOGIC_VECTOR(7 downto 0);
											 JD : out STD_LOGIC_VECTOR(7 downto 0);
											LED : out STD_LOGIC_VECTOR(7 downto 4));
end UCF_Test_Module;

architecture Dataflow of UCF_Test_Module is

begin
--LED <= SW(7 downto 4) & (SW(3 downto 0) OR BTN);
LED <= BTN;
JA  <= SW;
JB  <= SW;
JC  <= SW;
JD  <= SW;
end Dataflow;

