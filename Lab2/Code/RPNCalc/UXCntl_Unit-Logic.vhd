----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:54 02/17/2016 
-- Design Name: 
-- Module Name:    UXCntl_Unit-Logic - Behavioral 
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

entity UXCntl_Unit is
    Port ( INPUT	: in	STD_LOGIC_VECTOR (7 downto 0);
           CMD		: in	STD_LOGIC_VECTOR (3 downto 0);
           VALA	: out	STD_LOGIC_VECTOR (7 downto 0);
           VALB	: out STD_LOGIC_VECTOR (7 downto 0);
           OPCODE	: out STD_LOGIC_VECTOR (3 downto 0));
end UXCntl_unit;
				
architecture Behavioral of UXCntl_Unit is
	signal outgoinga : STD_LOGIC_VECTOR(7 downto 0);
	signal outgoingb : STD_LOGIC_VECTOR(7 downto 0);
	signal outgoingop : STD_LOGIC_VECTOR(3 downto 0);
	
begin
	VALA		<= outgoinga;
	VALB		<= outgoingb;
	OPCODE	<= outgoingop;
	
	latch_ra: process (CMD) begin
		if(CMD = "1000") then	-- Latch A
			outgoinga <= "11110000";
		end if;
	end process;
	
	latch_rb: process (CMD) begin
		if(CMD = "0100") then	-- Latch B
			outgoingb <= INPUT;
		end if;
	end process;
	
	latch_op: process (CMD) begin
		if(CMD = "0010") then	-- Latch OP
			outgoingop <= INPUT(3 downto 0);
		end if;
	end process;
		
	clear: process (CMD) begin
		if(CMD = "0001") then	-- Clear
			outgoinga		<= "00000000";
			outgoingb		<= "00000000";
			outgoingop	<= "0000";
		end if;
	end process;
end Behavioral;
