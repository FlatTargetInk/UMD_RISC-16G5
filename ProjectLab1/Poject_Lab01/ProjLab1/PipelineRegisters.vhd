----------------------------------------------------------------------------------
-- Company: UNIVERSITY OF MASSACHUSETTS - DARTMOUTH
-- Engineer: CHRISTOPHER PARKS (cparks1@umassd.edu)
-- 
-- Create Date:    15:33:22 03/11/2016 
-- Module Name:    PipelineRegisters - Behavioral 
-- Target Devices: SPARTAN XC3S500E
-- Description: REGISTERS TO BE USED AS A PIPELINE REGISTER
--
-- Dependencies: IEEE.STD_LOGIC_1164
--
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PipelineRegisters is
	generic(dataWidth:integer:=16);
    Port ( Clk : in  STD_LOGIC; -- Clock
           Ena : in  STD_LOGIC; -- Enable
           Rst : in  STD_LOGIC; -- Reset line
           Din : in  STD_LOGIC_VECTOR (dataWidth-1 downto 0); -- Data in
           Dout : out  STD_LOGIC_VECTOR (dataWidth-1 downto 0)); -- Data out
end PipelineRegisters;

architecture Behavioral of PipelineRegisters is

signal DataOutSignal : STD_LOGIC_VECTOR(dataWidth-1 DOWNTO 0) := (others=>'0'); -- Use a signal that always begins at 0 to ensure safe states

begin
	BehavioralProcess: process(Clk, Rst)
	begin
		if(rising_edge(Clk) and Ena = '1') then
			DataOutSignal <= Din;
			Dout <= DataOutSignal; -- Update data out
		end if;
		if(Rst = '1' and Ena = '1') then -- If the reset line has been driven high, reset the data out.
			Dout <= (others=>'0'); -- Set data out to all zeroes
		end if;
	end process;
end Behavioral;

