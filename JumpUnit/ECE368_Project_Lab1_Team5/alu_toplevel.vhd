----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:02 03/28/2016 
-- Design Name: 
-- Module Name:    ALU_Toplevel - Dataflow 
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
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity ALU_Toplevel is
    Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
           OP : in  STD_LOGIC_VECTOR (3 downto 0);
			  CLK	:		IN STD_LOGIC;
           ALU_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           SREG : out  STD_LOGIC_VECTOR (3 downto 0);
           LDST_DAT : out  STD_LOGIC_VECTOR (15 downto 0);
           LDST_ADR : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU_Toplevel;

architecture Structural of ALU_Toplevel is

signal ARITH		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal SREG_AR		: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');
signal LOGIC		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal SREG_LG		: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');
signal SHIFT		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal SREG_SH		: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');
signal LD_MEM		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal WORD_OUT	: STD_LOGIC_VECTOR (15 downto 0)	:= (OTHERS => '0');
signal LDST_ADR_8	: STD_LOGIC_VECTOR (7 downto 0) 	:= (OTHERS => '0');
signal BR			: STD_LOGIC								:= '0';
signal CCR			: STD_LOGIC_VECTOR (3 downto 0)  := (OTHERS => '0');

begin

LDST_ADR <= X"00" & LDST_ADR_8;

	arith_unit: entity work.arith_unit
	port map(	RA 		=> RA,
					RB 		=> RB,
					OP 		=> OP(2 downto 0),
					AR_OUT	=> ARITH,
					SREG_OUT	=> SREG_AR);
	
	logical_unit: entity work.logical_unit
	port map(	RA			=> RA,
					RB			=>	RB,
					OP			=> OP(2 downto 0),
					LOG_OUT	=> LOGIC,
					SREG_OUT	=> SREG_LG);
					
	shift_unit: entity work.shift_unit
	port map(	RA 			=> RA,
					SHIFT			=> RB(7 downto 0),
					OP				=> OP(3),
					SHIFT_OUT	=> SHIFT,
					SREG_OUT		=> SREG_SH);
	
	word_unit: entity work.word_unit
	port map(	DATAIN	=> RA,
					IMMAddr	=> RB(7 downto 0),
					CLK		=> CLK,
					OP			=> OP,
					RESULT	=> WORD_OUT,
					DST_ADR	=> LDST_ADR_8,
					STORE_DATA	=> LDST_DAT);
					
	jump_unit: entity work.jump_unit
	port map( CLK   => CLK,
				 OP    => OP,
			    CCR   => CCR,
             MASK  => RA(3 downto 0),
             IMMD  => RB,
			    BRSIG => BR);
	
	with OP select 
		ALU_OUT <=
			ARITH 	when "0000", -- ADD (ARITHMETIC)
			ARITH 	when "0001", -- SUB (ARITHMETIC)
			LOGIC 	when "0010", -- AND (LOGICAL)
			LOGIC 	when "0011", -- OR  (LOGICAL)
			LOGIC 	when "0100", -- MOV (LOGICAL)
			ARITH 	when "0101", -- ADDI (ARITHMETIC)
			LOGIC 	when "0110", -- ANDI (LOGICAL)
			SHIFT 	when "0111", -- SL (SHIFT)
			SHIFT 	when "1000", -- SR (SHIFT)
			WORD_OUT	when "1001", -- LW (WORD)
			RA	 		when "1010", -- SW (WORD)
			X"0000"	when OTHERS;
	
	with OP select 
		CCR <=
			SREG_AR 	when "0000", -- ADD (ARITHMETIC)
			SREG_AR 	when "0001", -- SUB (ARITHMETIC)
			SREG_LG 	when "0010", -- AND (LOGICAL)
			SREG_LG 	when "0011", -- OR  (LOGICAL)
			SREG_LG 	when "0100", -- MOV (LOGICAL)
			SREG_AR 	when "0101", -- ADDI (ARITHMETIC)
			SREG_LG	when "0110", -- ANDI (LOGICAL)
			SREG_SH 	when "0111", -- SL (SHIFT)
			SREG_SH 	when "1000", -- SR (SHIFT)
			X"0"		when OTHERS;
			
		SREG <= CCR;
			

end Structural;

