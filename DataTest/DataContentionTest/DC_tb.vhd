--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:06:41 04/03/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/DataTest/DataContentionTest/DC_tb.vhd
-- Project Name:  DataContentionTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DC_Toplevel
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DC_tb IS
END DC_tb;
 
ARCHITECTURE behavior OF DC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DC_Toplevel
    PORT(
         CLK : IN  std_logic;
         DATA : IN  std_logic_vector(3 downto 0);
         ADR : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal ADR : std_logic_vector(3 downto 0) := (others => '0');

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DC_Toplevel PORT MAP (
          CLK => CLK,
          DATA => DATA,
          ADR => ADR
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      DATA 	<= X"0";
		ADR 	<= X"1";
		
		wait for CLK_period;
		
		ADR	<= X"2";
		
		wait for CLK_period;
		
		ADR 	<= X"1";
		
		wait for CLK_period;
		
		ADR 	<= X"1";
		

      wait;
   end process;

END;
