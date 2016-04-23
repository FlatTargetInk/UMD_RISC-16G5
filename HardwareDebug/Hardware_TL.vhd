----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:43 04/22/2016 
-- Design Name: 
-- Module Name:    Hardware_TL - Behavioral 
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

entity Hardware_TL is
	Port(	CLK	: in STD_LOGIC;
			BTN	: in STD_LOGIC_VECTOR(3 downto 0);
			SW		: in STD_LOGIC_VECTOR(7 downto 0);
			LED	: out STD_LOGIC_VECTOR(7 downto 0);
			SEG	: out STD_LOGIC_VECTOR(6 downto 0);
			DP		: out STD_LOGIC;
			AN		: out	STD_LOGIC_VECTOR(3 downto 0);
			JA		: out STD_LOGIC_VECTOR(7 downto 0);
			JB		: out STD_LOGIC_VECTOR(7 downto 0);
			JC		: out STD_LOGIC_VECTOR(7 downto 0);
			JD		: out STD_LOGIC_VECTOR(3 downto 0));
end Hardware_TL;

architecture Structural of Hardware_TL is

----> Management <----
signal HW_EN			: STD_LOGIC := '1';	-- Hardware Enable Line
signal HW_RST			: STD_LOGIC := '0';	-- Hardware Reset Line
----> Inputs <----
signal btn_sig			: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
signal software_clk	: STD_LOGIC := '0';
signal sft_rst			: STD_LOGIC := '0';
----> Outputs <----
signal SSEG_DATA 		: STD_LOGIC_VECTOR (15 downto 0) := X"0000";	-- Debug with Seven Segment Display
signal DBUG_BUS		: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal ALU_OUT			: STD_LOGIC_VECTOR (15 downto 0) := (OTHERS => '0');
signal DEBUG_DATA		: STD_LOGIC_VECTOR (15 downto 0)	:= (OTHERS => '0');

begin
	
	SFT_RST <= btn_sig(0);
--------  Place UUT Here  --------
----------------------------------
	UUT: entity work.ProjLab01
	Port map(CLK 		=> software_clk,
				RST 		=> SFT_RST,
				ALU_OUT	=> ALU_OUT,
				DST_ADR	=> DBUG_BUS,
				DEBUG_OUT	=> DEBUG_DATA);
--				STORE_DATA : out  STD_LOGIC_VECTOR (15 downto 0);
--				CCR : out  STD_LOGIC_VECTOR (3 downto 0));
	
	----> Mappings <----
	LED <= DBUG_BUS(7 downto 0);
	JA <= (OTHERS => '0');
	JB <= (OTHERS => '1');
	JC <= (OTHERS => '0');
	JD <= (OTHERS => '1');

--------  Hardware Testing Devices  --------
--------------------------------------------

	----> Output Selector <----
	with SW(0) select SSEG_DATA <=
		ALU_OUT when '0',
		DEBUG_DATA when '1',
		ALU_OUT when OTHERS;
		
	----> Seven Segment Output <----
	SSeg_unit: entity work.SSeg_toplevel
	port map(CLK 	=> CLK,
				DATA	=> SSEG_DATA,
				RST 	=> HW_RST,
				SEG 	=> SEG,
				DP  	=> DP,
				AN  	=> AN);

	----> Button Input Controller <----
	Buttons: entity work.buttoncontrol
	port map(CLK	=> CLK,
				EN    => HW_EN,
				BTN  	=> BTN,
				LED 	=> btn_sig);
	
	----> Clock Generator <----
	ClkGen: entity work.clock_toplevel
	port map(CLK 	=> CLK,
				BTN 	=> btn_sig(3),
				SW  	=> SW(7 downto 6),
				SWCLK	=> software_clk);



end Structural;

