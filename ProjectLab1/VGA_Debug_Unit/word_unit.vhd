----------------------------------------------------------------------------------
-- Company: UNIVERSITY OF MASSACHUSETTS DARTMOUTH
-- Engineer: CHRISTOPHER PARKS (cparks13@live.com)
-- 
-- Create Date:    14:45:47 03/31/2016 
-- Design Name: 
-- Module Name:    word_unit - Behavioral 
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

entity word_unit is
    Port ( DATAIN : in  STD_LOGIC_VECTOR (15 downto 0);
           IMMAddr : in  STD_LOGIC_VECTOR (7 downto 0);
			  CLK : in STD_LOGIC;
           OP : in  STD_LOGIC_VECTOR(3 downto 0); -- Pass OP(2) to this (OP=0=Load, OP=1=Write)
           RESULT : out  STD_LOGIC_VECTOR (15 downto 0));
end word_unit;

architecture Combinational of word_unit is
signal WREN : STD_LOGIC_VECTOR(0 downto 0) := "0";
begin
WREN <= "0" when OP = x"9" else -- x"9" is load word
		  "1" when OP = x"A"; -- x"A" is store word
		  
DATAMEMORY : entity work.DATAMEM port map(ADDRA => IMMAddr,
														DINA  => DATAIN,
														WEA   => WREN, -- Write enable
														CLKA  => CLK,
														DOUTA => RESULT);
														
-- When OP = 1 then WRITE is enabled, IMMAddr gives us the address to write to, DATAIN gives us the data to write. RESULT will soon show data written if untouched
-- When OP = 0 then WRITE is disabled, DATAIN is ignored, IMMAddr gives us the address to read from, and RESULT is set to the RESULT.
end Combinational;

