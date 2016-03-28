----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:57 03/11/2016 
-- Design Name: 
-- Module Name:    FetchModule - Behavioral 
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

entity FetchModule is
	generic(PCWIDTH:integer:=16);
	generic(ADDRWIDTH:integer:=16);
	generic(DATAWIDTH:integer:=16);
    Port ( PRGMADR : in  STD_LOGIC_VECTOR (PCWIDTH-1 downto 0);
           EN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ADDR : out  STD_LOGIC_VECTOR (ADDRWIDTH-1 downto 0);
           DATA : in  STD_LOGIC_VECTOR (DATAWIDTH-1 downto 0);
           RAADR : out  STD_LOGIC_VECTOR (DATAWIDTH-1 downto 0);
           RBADR : out  STD_LOGIC_VECTOR ( downto 0);
           OPCODE : out  STD_LOGIC_VECTOR (3 downto 0);
           IMMDATA : out  STD_LOGIC_VECTOR (0 downto 0));
end FetchModule;

architecture Behavioral of FetchModule is

begin
process(CLK,RST)
begin
	if(RST = '1')then
		ADDR <= (OTHERS => '0');
		

end Behavioral;

