----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:41:56 04/03/2016 
-- Design Name: 
-- Module Name:    DC_Toplevel - Behavioral 
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
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DC_Toplevel is
port(	CLK:	in	STD_LOGIC;
		DATA:	in STD_LOGIC_VECTOR(3 downto 0);
		ADR:	in STD_LOGIC_VECTOR(3 downto 0);
		DATA_OUT	: out STD_LOGIC_VECTOR(7 downto 0));
end DC_Toplevel;

architecture Structural of DC_Toplevel is
signal ENABLE 	: STD_LOGIC := '1';
signal RESET	: STD_LOGIC := '0';
signal CONTROL	: STD_LOGIC_VECTOR (1 downto 0) := (OTHERS => '0');

signal MUXED	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal DC1_SIG	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal DC2_SIG	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal DC3_SIG	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');

--signal MUXED_ADR	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal ADR1_SIG	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal ADR2_SIG	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');
signal ADR3_SIG	: STD_LOGIC_VECTOR(3 downto 0) := (OTHERS => '0');

begin
	DATA_OUT <= DC1_SIG & ADR1_SIG;
	
	HOUSTON: entity work.DC_CTL
	port map(	CLK 	=> CLK,
					RA 	=> ADR,
--					RB 	: in STD_LOGIC_VECTOR (3 downto 0);
					RA0	=> ADR1_SIG,
					RA1	=> ADR2_SIG,
					RA2	=> ADR3_SIG,
--					OPC 	: in  STD_LOGIC_VECTOR (3 downto 0);
					OP1_SEL => CONTROL);
--					OP2_SEL : out  STD_LOGIC_VECTOR (1 downto 0));
	
	DC1_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(	Clk => CLK,
					Ena => ENABLE,
					Rst => RESET,
					Din => MUXED,
					Dout => DC1_SIG);
	
	ADR1_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(	Clk => CLK,
					Ena => ENABLE,
					Rst => RESET,
					Din => ADR,
					Dout => ADR1_SIG);
	
	DC2_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(	Clk => CLK,
					Ena => ENABLE,
					Rst => RESET,
					Din => DC1_SIG,
					Dout => DC2_SIG);
	
	ADR2_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(	Clk => CLK,
					Ena => ENABLE,
					Rst => RESET,
					Din => ADR1_SIG,
					Dout => ADR2_SIG);
	
	DC3_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(	Clk => CLK,
					Ena => ENABLE,
					Rst => RESET,
					Din => DC2_SIG,
					Dout => DC3_SIG);
	
	ADR3_Reg: entity work.PipelineRegisters
	generic map(dataWidth => 4)
	port map(	Clk => CLK,
					Ena => ENABLE,
					Rst => RESET,
					Din => ADR2_SIG,
					Dout => ADR3_SIG);
					
	with CONTROL select MUXED <=
		DATA	  when "00",
		DC1_SIG when "01",
		DC2_SIG when "10",
		DC3_SIG when "11",
		DATA	  when OTHERS;
	
	
end Structural;

