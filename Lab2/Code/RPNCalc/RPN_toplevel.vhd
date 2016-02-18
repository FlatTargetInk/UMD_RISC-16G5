----------------------------------------------------------------------------------
-- School:		University of Massachusetts Dartmouth
-- Department:	Electrical and Computer Engineering
-- Engineers:	
-- 
-- Create Date:    16:43:51 02/12/2016 
-- Design Name: 
-- Module Name:    RPN_toplevel - Behavioral 
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

entity RPN_toplevel is
	Port (CLK		: in STD_LOGIC;
			BTN		: in STD_LOGIC_VECTOR (3 downto 0);
			SW    	: in STD_LOGIC_VECTOR (7 downto 0);
			AN			: out STD_LOGIC_VECTOR (3 downto 0);
			SEG		: out STD_LOGIC_VECTOR (7 downto 0));
end RPN_toplevel;

architecture Structural of RPN_toplevel is	-- Structural changed from Behavioral
	signal DBTN		: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RA	 	: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal RB		: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal OPCODE	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RFLAGS	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
	signal RESULT	: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal ENABLED	: STD_LOGIC := '1';
	signal DISABLED : STD_LOGIC := '0';
	signal s2		: STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal s3		: STD_LOGIC_VECTOR (3 downto 0) := "0000";
	
	-- ALU Stuff --
	signal arith     : STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
   signal logic     : STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
   signal shift     : STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
   signal memory    : STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
   signal ccr_arith : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
   signal ccr_logic : STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');

begin
	-- Debounce Units --
	BTN_0: entity work.debounce
   port map( CLK		=> CLK,
              EN		=> ENABLED,	-- Make This a 1 --
              INPUT  => BTN(0),
              OUTPUT => DBTN(0));

    BTN_1: entity work.debounce
    port map( CLK    => CLK,
              EN		=> ENABLED,	-- Make this a 1 --
              INPUT  => BTN(1),
              OUTPUT => DBTN(1));

    BTN_2: entity work.debounce
    port map( CLK    => CLK,
              EN    	=> ENABLED,	-- Make this a 1
              INPUT  => BTN(2),
              OUTPUT => DBTN(2));

    BTN_3: entity work.debounce
    port map( CLK    => CLK,
              EN    	=> ENABLED,	-- Make this a 1
              INPUT  => BTN(3),
              OUTPUT => DBTN(3));
				  
	-- Action units --
	UXCntl_Unit: entity work.UXCntl_Unit
	port map(INPUT		=> SW,
				CMD		=> DBTN,
				VALA		=> RA,
				VALB		=> RB,
				OPCODE	=> OPCODE);
				
	-- ALU Unit --
	-- LDST_OUT <= memory;

    Arith_Unit: entity work.Arith_Unit
    port map( A      => RA,
              B      => RB,
              OP     => OPCODE(2 downto 0),
              CCR    => ccr_arith,
              RESULT => arith);

    Logic_Unit: entity work.Logic_Unit
    port map( A      => RA,
              B      => RB,
              OP     => OPCODE(2 downto 0),
              CCR    => ccr_logic,
              RESULT => logic);

    shift_unit: entity work.alu_shift_unit
    port map( A      => RA,
              COUNT  => RB(2 downto 0),
              OP     => opcode(3),
              RESULT => shift);

    Load_Store_Unit: entity work.Load_Store_Unit
    port map( CLK    => CLK,
              A      => RA,
              IMMED  => RB,
              OP     => opcode,
              RESULT => memory);

    ALU_Mux: entity work.ALU_Mux
    port map( OP        => opcode,
              ARITH     => arith,
              LOGIC     => logic,
              SHIFT     => shift,
              MEMORY    => memory,
              CCR_ARITH => ccr_arith,
              CCR_LOGIC => ccr_logic,
              ALU_OUT   => RESULT,	-- FORMERLY ALU_OUT
              CCR_OUT   => RFLAGS);	-- FORMERLY CCR
				
	-- Display Unit --
	SSeg: entity work.SSegDriver
	port map( CLK     => CLK,
             RST     => DISABLED,
             EN      => ENABLED,
             SEG_3   => RESULT(3 downto 0),
             SEG_2   => RESULT(7 downto 4),
             SEG_1   => s2,
             SEG_0   => s3,
             DP_CTRL => s3,
             COL_EN  => DISABLED,
             SEG_OUT => SEG(6 downto 0),
             DP_OUT  => s2(1),
             AN_OUT  => AN(3 downto 0));
				 				  
end Structural;

