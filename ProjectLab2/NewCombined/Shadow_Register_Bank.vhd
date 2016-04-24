----------------------------------------------------------------------------------
-- Company: UNIVERSITY OF MASSACHUSETTS - DARTMOUTH
-- Engineer: CHRISTOPHER PARKS (cparks1@umassd.edu)
-- 
-- Create Date:    15:33:22 03/11/2016 
-- Module Name:    PipelineRegisters - Behavioral 
-- Target Devices: SPARTAN XC3S500E
-- Description: REGISTER BANK TO BE USED IN PIPELINE DEVICE THAT USES GENERAL PURPOSE REGISTERS FOR PIPELINE USE
--
-- Dependencies: IEEE.STD_LOGIC_1164
--
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
	 use IEEE.STD_LOGIC_1164.ALL;
--	 use work.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity Shadow_Reg is
    Port ( RAddr 	: in  STD_LOGIC_VECTOR (1 downto 0); --
           --RBddr 	: in  STD_LOGIC_VECTOR (1 downto 0); --
           --RWddr 	: in  STD_LOGIC_VECTOR (1 downto 0);
           --DATAIN : in  STD_LOGIC_VECTOR (15 downto 0);
           CLK 	: in  STD_LOGIC;
			  RST		: in  STD_LOGIC;
			  R		: in  STD_LOGIC;
			  W		: in  STD_LOGIC;
           RAout 	: out  STD_LOGIC_VECTOR (15 downto 0)); --
           --RBout 	: out  STD_LOGIC_VECTOR (1 downto 0)); --
end Shadow_Reg;

architecture Behavioral of Shadow_Reg is

signal R0dat, R1dat, R2dat, R3dat : STD_LOGIC_VECTOR(15 downto 0) := (OTHERS => '0');
		 
begin

	process(clk,rst) -- Synchronous register bank
	begin
		if(rst = '1') then
			R0dat <= x"1000";
			R1dat <= x"1100";
			R2dat <= x"1200";
			R3dat <= x"1300";
			
		elsif(rising_edge(clk) and R = '1') then -- Synchronous data read when read line enabled on rising edge (before write back)	
				case RAddr is
					when "00" => RAout <= R0dat;
					when "01" => RAout <= R1dat;
					when "10" => RAout <= R2dat;
					when "11" => RAout <= R3dat;
--					when x"4" => RAout <= R4dat;
--					when x"5" => RAout <= R5dat;
--					when x"6" => RAout <= R6dat;
--					when x"7" => RAout <= R7dat;
--					when x"8" => RAout <= R8dat;
--					when x"9" => RAout <= R9dat;
--					when x"A" => RAout <= R10dat;
--					when x"B" => RAout <= R11dat;
--					when x"C" => RAout <= R12dat;
--					when x"D" => RAout <= R13dat;
--					when x"E" => RAout <= R14dat;
--					when x"F" => RAout <= R15dat;
				 when others => -- BY DEFAULT DO NOTHING FOR FAULTY ADDRESS
				end case;

--				case RBddr is
--					when "00" => RBout <= R0dat;
--					when "01" => RBout <= R1dat;
--					when "10" => RBout <= R2dat;
--					when "11" => RBout <= R3dat;
--					when x"4" => RBout <= R4dat;
--					when x"5" => RBout <= R5dat;
--					when x"6" => RBout <= R6dat;
--					when x"7" => RBout <= R7dat;
--					when x"8" => RBout <= R8dat;
--					when x"9" => RBout <= R9dat;
--					when x"A" => RBout <= R10dat;
--					when x"B" => RBout <= R11dat;
--					when x"C" => RBout <= R12dat;
--					when x"D" => RBout <= R13dat;
--					when x"E" => RBout <= R14dat;
--					when x"F" => RBout <= R15dat;
--				   when others => -- BY DEFAULT DO NOTHING FOR FAULTY ADDRESS
--				end case;
		end if;
		
--		if(falling_edge(clk) and W = '1') then -- Synchronous data latching when write line enabled (after data read)
--				case RWddr is
--					when "00" => R0dat <= DATAIN;
--					when "01" => R1dat <= DATAIN;
--					when "10" => R2dat <= DATAIN;
--					when "11" => R3dat <= DATAIN;
--					when x"4" => R4dat <= DATAIN;
--					when x"5" => R5dat <= DATAIN;
--					when x"6" => R6dat <= DATAIN;
--					when x"7" => R7dat <= DATAIN;
--					when x"8" => R8dat <= DATAIN;
--					when x"9" => R9dat <= DATAIN;
--					when x"A" => R10dat <= DATAIN;
--					when x"B" => R11dat <= DATAIN;
--					when x"C" => R12dat <= DATAIN;
--					when x"D" => R13dat <= DATAIN;
--					when x"E" => R14dat <= DATAIN;
--					when x"F" => R15dat <= DATAIN;
--				   when others => -- BY DEFAULT DO NOTHING FOR FAULTY ADDRESS
--				end case;
--		end if;
	end process;
end Behavioral;
