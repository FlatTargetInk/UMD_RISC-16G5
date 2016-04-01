----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:58 03/31/2016 
-- Design Name: 
-- Module Name:    Inst_Mem_Dataflow - Behavioral 
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

entity Inst_Mem_Dataflow is
    Port ( INST_IN : in  STD_LOGIC_VECTOR (19 downto 0);
           OPI : out  STD_LOGIC_VECTOR (3 downto 0);
           RAI : out  STD_LOGIC_VECTOR (3 downto 0);
           RBI : out  STD_LOGIC_VECTOR (3 downto 0);
           IMMI : out  STD_LOGIC_VECTOR (7 downto 0));
end Inst_Mem_Dataflow;

architecture Dataflow of Inst_Mem_Dataflow is

begin

OPI <= INST_IN(19 downto 16);  --OPCODE--
RAI <= INST_IN(15 downto 12);  --RA--
RBI <= INST_IN(11 downto 8);  --RB--
IMMI <= INST_IN(7 downto 0); --IMMEDIATE--

--	--OPCODE--
--	with INST_IN(19 downto 16) select
--		OPI <= x"0" when x"0",
--				x"1" when x"1",
--				x"2" when x"2",
--				x"3" when x"3",
--				x"4" when x"4",
--				x"5" when x"5",
--				x"6" when x"6",
--				x"7" when x"7",
--				x"8" when x"8",
--				x"9" when x"9",
--				x"A" when x"A",
--				x"0" when others; --Invalid
--				
--	--RA--
--	with INST_IN(15 downto 12) select
--		RAI <= x"0" when x"0", --R0
--				x"1" when x"1", --R1
--				x"2" when x"2", --R2
--				x"3" when x"3", --R3
--				x"4" when x"4", --R4
--				x"5" when x"5", --R5
--				x"6" when x"6", --R6
--				x"7" when x"7", --R7
--				x"8" when x"8", --R8
--				x"9" when x"9", --R9
--				x"A" when x"A", --RA
--				x"B" when x"B", --RB
--				x"C" when x"C", --RC
--				x"D" when x"D", --RD
--				x"E" when x"E", --RE
--				x"F" when x"F", --RF
--				x"0" when others; --Invalid
--				
--				
--	--RB--
--	with INST_IN(11 downto 8) select
--		RBI <= x"0" when x"0", --R0
--				x"1" when x"1", --R1
--				x"2" when x"2", --R2
--				x"3" when x"3", --R3
--				x"4" when x"4", --R4
--				x"5" when x"5", --R5
--				x"6" when x"6", --R6
--				x"7" when x"7", --R7
--				x"8" when x"8", --R8
--				x"9" when x"9", --R9
--				x"A" when x"A", --RA
--				x"B" when x"B", --RB
--				x"C" when x"C", --RC
--				x"D" when x"D", --RD
--				x"E" when x"E", --RE
--				x"F" when x"F", --RF
--				x"0" when others; --Invalid	
--
--	--IMMEDIATE--
--	with INST_IN(7 downto 0) select
--		IMMI <= x"00" when x"00", --$00
--				x"01" when x"01", --$01
--				x"02" when x"02", --$02
--				x"03" when x"03", --$03
--				x"04" when x"04", --$04
--				x"05" when x"05", --$05
--				x"06" when x"06", --$06
--				x"07" when x"07", --$07
--				x"08" when x"08", --$08
--				x"09" when x"09", --$09
--				x"0A" when x"0A", --$0A
--				x"0B" when x"0B", --$0B
--				x"0C" when x"0C", --$0C
--				x"0D" when x"0D", --$0D
--				x"0E" when x"0E", --$0E
--				x"0F" when x"0F", --$0F
--				x"00" when others; --Invalid
				

end Dataflow;

