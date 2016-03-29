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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Toplevel is
    Port ( RA : in  STD_LOGIC_VECTOR (15 downto 0);
           RB : in  STD_LOGIC_VECTOR (15 downto 0);
           OP : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           SREG : out  STD_LOGIC_VECTOR (3 downto 0);
           LDST_DAT : out  STD_LOGIC_VECTOR (15 downto 0);
           LDST_ADR : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU_Toplevel;

architecture Dataflow of ALU_Toplevel is

signal ARITH	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal SREG_AR	: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');
signal LOGIC	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal SREG_LG	: STD_LOGIC_VECTOR (3 downto 0)	:= (OTHERS => '0');
signal SHIFT	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal SREG_SH	: STD_LOGIC_VECTOR (15 downto 0)	:= (OTHERS => '0');
signal LD_MEM	: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');

begin
	arith_unit: entity work.arith_unit
	port map(	RA 		=> RA,
					RB 		=> RB,
					OP 		=> OP(2 downto 0),
					AR_OUT	=> ARITH);
	
	logical_unit: entity work.logical_unit
	port map(	RA			=> RA,
					RB			=>	RB,
					OP			=> OP(2 downto 0),
					LOG_OUT	=> LOGIC,
					SREG_OUT	=> SREG_LG);
					

end Dataflow;

