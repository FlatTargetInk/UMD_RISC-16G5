----------------------------------------------------------------------------------
-- Company: UNIVERSITY OF MASSACHUSETTS - DARTMOUTH
-- Engineer: CHRISTOPHER PARKS (cparks1@umassd.edu)
-- 
-- Create Date:    15:33:22 03/11/2016 
-- Module Name:    PipelineRegisters - Behavioral 
-- Target Devices: SPARTAN XC3S500E
-- Description: SYNCHRONOUS REGISTER BANK TO BE USED IN PIPELINE DEVICE THAT USES GENERAL PURPOSE REGISTERS FOR PIPELINE USE
--
-- Dependencies: IEEE.STD_LOGIC_1164
--
-- Revision 0.01 - File Created
-- Revision 0.02 - (3/31/16) Comments added, verified address selection worked as Dan's compiler expected.
--									  
-- Additional Comments: Signals in this module are used as data storage registers,
--								going from R0 up to R15. Faulty addresses are handled by
--								not handling them. This means that when a faulty address
--								is given, the old data is left on the output value.
--								EXAMPLE: RAout assigned 12 previously. New RAddr is faulty.
--											RAout remains as assigned 12.
--
--								The register bank is synchronous, meaning it will read data
--								into a register on the rising edge and then output data on
--								the RAout/RBout lines on the falling edge of clk.
----------------------------------------------------------------------------------
library IEEE;
	 use IEEE.STD_LOGIC_1164.ALL;

entity RegisterBank is
    Port ( RAddr 	: in  STD_LOGIC_VECTOR (3 downto 0); -- Address for register to put out to RAout
           RBddr 	: in  STD_LOGIC_VECTOR (3 downto 0); -- Address for register to put out to RBout
           RWddr 	: in  STD_LOGIC_VECTOR (3 downto 0); -- Address for register to write to
           DATAIN : in  STD_LOGIC_VECTOR (15 downto 0); -- Data to write to register
           clk 	: in  STD_LOGIC; -- Clock. Register bank is synchronous. Read on rising edge, Write on falling edge.
           R 		: in  STD_LOGIC; -- Read enable (Enables register bank to put out data)
           W 		: in  STD_LOGIC; -- Write enable (Enables register bank to take in data)
           RAout 	: out  STD_LOGIC_VECTOR (15 downto 0);  -- Puts out data based on register selection using RAddr
           RBout 	: out  STD_LOGIC_VECTOR (15 downto 0)); -- Puts out data based on register selection using RBddr
end RegisterBank;

architecture Behavioral of RegisterBank is

signal R0dat, R1dat, R2dat, R3dat, R4dat, R5dat, R6dat, R7dat, R8dat, R9dat,
		 R10dat, R11dat, R12dat, R13dat, R14dat, R15dat : STD_LOGIC_VECTOR(15 downto 0) := x"0000";
		 
begin

	process(clk) -- Synchronous register bank
	begin
		if(rising_edge(clk) and R = '1') then -- Synchronous data read when read line enabled on rising edge (before write back)	
				case RAddr is -- Address selection for RA
					when x"0" => RAout <= R0dat;
					when x"1" => RAout <= R1dat;
					when x"2" => RAout <= R2dat;
					when x"3" => RAout <= R3dat;
					when x"4" => RAout <= R4dat;
					when x"5" => RAout <= R5dat;
					when x"6" => RAout <= R6dat;
					when x"7" => RAout <= R7dat;
					when x"8" => RAout <= R8dat;
					when x"9" => RAout <= R9dat;
					when x"A" => RAout <= R10dat;
					when x"B" => RAout <= R11dat;
					when x"C" => RAout <= R12dat;
					when x"D" => RAout <= R13dat;
					when x"E" => RAout <= R14dat;
					when x"F" => RAout <= R15dat;
				 when others => -- BY DEFAULT DO NOTHING FOR FAULTY ADDRESS. THIS CAUSES THE PREVIOUS DATA TO REMAIN FOR A FAULTY ADDRESS!
				end case; -- (3/31/16): Verified RegisterBank address selection matched up with what Dan Noyes' compiler expects.

				case RBddr is -- Address selection for RB
					when x"0" => RBout <= R0dat;
					when x"1" => RBout <= R1dat;
					when x"2" => RBout <= R2dat;
					when x"3" => RBout <= R3dat;
					when x"4" => RBout <= R4dat;
					when x"5" => RBout <= R5dat;
					when x"6" => RBout <= R6dat;
					when x"7" => RBout <= R7dat;
					when x"8" => RBout <= R8dat;
					when x"9" => RBout <= R9dat;
					when x"A" => RBout <= R10dat;
					when x"B" => RBout <= R11dat;
					when x"C" => RBout <= R12dat;
					when x"D" => RBout <= R13dat;
					when x"E" => RBout <= R14dat;
					when x"F" => RBout <= R15dat;
				   when others => -- BY DEFAULT DO NOTHING FOR FAULTY ADDRESS. THIS CAUSES THE PREVIOUS DATA TO REMAIN FOR A FAULTY ADDRESS!
				end case; -- (3/31/16): Verified RegisterBank address selection matched up with what Dan Noyes' compiler expects.
		end if;
		
		if(falling_edge(clk) and W = '1') then -- Synchronous data latching when write line enabled (after data read)
				case RWddr is
					when x"0" => R0dat <= DATAIN;
					when x"1" => R1dat <= DATAIN;
					when x"2" => R2dat <= DATAIN;
					when x"3" => R3dat <= DATAIN;
					when x"4" => R4dat <= DATAIN;
					when x"5" => R5dat <= DATAIN;
					when x"6" => R6dat <= DATAIN;
					when x"7" => R7dat <= DATAIN;
					when x"8" => R8dat <= DATAIN;
					when x"9" => R9dat <= DATAIN;
					when x"A" => R10dat <= DATAIN;
					when x"B" => R11dat <= DATAIN;
					when x"C" => R12dat <= DATAIN;
					when x"D" => R13dat <= DATAIN;
					when x"E" => R14dat <= DATAIN;
					when x"F" => R15dat <= DATAIN;
				   when others => -- BY DEFAULT DO NOTHING FOR FAULTY ADDRESS. THIS CAUSES THE PREVIOUS DATA TO REMAIN FOR FAULTY ADDRESS!
				end case; -- (3/31/16): Verified RegisterBank address selection matched up with what Dan Noyes' compiler expects.
		end if;
	end process;
end Behavioral;
