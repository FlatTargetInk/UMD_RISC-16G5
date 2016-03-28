----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Rob Mushrall
--				 Timothy Doucette Jr
--				 Chris Parks
-- 
-- Create Date:    15:43:26 03/25/2016 
-- Design Name: 
-- Module Name:    ProjLab01 - Behavioral 
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

entity ProjLab01 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ALU_OUT : out  STD_LOGIC_VECTOR (15 downto 0);
           DST_ADR : out  STD_LOGIC_VECTOR (15 downto 0);
           STORE_DATA : out  STD_LOGIC_VECTOR (15 downto 0);
           CCR : out  STD_LOGIC_VECTOR (3 downto 0));
end ProjLab01;


architecture Structural of ProjLab01 is
	signal GLOBAL_EN : STD_LOGIC := '1'; -- Determines whether things are enabled and allowed to do the thing
	signal OP1, OP2, OP3, OP4	:	STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RA1, RA2, RA3, RA4	:	STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RB1, RB2, RB3, RB4	: 	STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal IM1, IM2, IM3			: 	STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal IMM_SEL 				: STD_LOGIC := '0'; -- Determines selection between immediate data and RB
	signal DC2_1, DC2_2 			: STD_LOGIC := '0'; -- 
	signal PC_EN, PC_RST, PC_INC			: STD_LOGIC := '0'; -- Program counter enable
	signal INST_EN : STD_LOGIC := '1'; -- Enables instruction memory
	signal RD_EN, WR_EN : STD_LOGIC := '0'; -- Enables the register bank to read, write
	signal OP1_SEL, OP2_SEL : STD_LOGIC := '0'; -- Used for data contention ctrl (DC_CTL) to drive select lines on two muxes

begin
	DISPTCH 		: entity work.Dispatch port map(CLK => CLK, -- (in)
													 OPC => OP2, -- (in)
													 RA  => RA2, -- (in)
													 RB  => RB2, -- (in)
													 RA4 => RA4, -- (in)
												IMM_SEL => IMM_SEL, -- (out)
												    DC1 => DC2_1, -- (out)
													 DC2 => DC2_2); -- Dispatch control unit (out)
	
	FETCH 	: entity work.Fetch_CTL port map(		CLK => CLK, -- (in)
														 EN => GLOBAL_EN, -- (in)
														RST => PC_RST, -- (out)
														INC => PC_INC, -- (out)
													 PC_EN => PC_EN, -- (out)
												  INST_EN => INST_EN); -- Fetch control unit (out)
												  
	REGCTL	: entity work.REG_CTL port map(CLK => CLK, -- (in)
											   OPC => OP1, -- (in)
											  OPC4 => OP4, -- (in)
											 RD_EN => RD_EN, -- (out)
											 WR_EN => WR_EN); -- Register control unit (out)
											  
	DCCTL 	: entity work.DC_CTL port map(CLK => CLK, -- (in)
											  RA => RA1, -- (in)
											  RB => RB1, -- (in)
											  OPC => OP1, -- (in)
											  RA4 => RA4, -- (in)
											  OP1_SEL => OP1_SEL, -- (out)
											  OP2_SEL => OP2_SEL); -- Data contention (out)


end Structural;

