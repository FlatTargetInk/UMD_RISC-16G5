--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:26:27 04/04/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/DataTest/DataContentionTest/HOUSTON_tb.vhd
-- Project Name:  DataContentionTest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DC_CTL
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
 
ENTITY HOUSTON_tb IS
END HOUSTON_tb;
 
ARCHITECTURE behavior OF HOUSTON_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DC_CTL
    PORT(
         CLK : IN  std_logic;
         RA : IN  std_logic_vector(3 downto 0);
         RA0 : IN  std_logic_vector(3 downto 0);
         RA1 : IN  std_logic_vector(3 downto 0);
         RA2 : IN  std_logic_vector(3 downto 0);
         OP1_SEL : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RA : std_logic_vector(3 downto 0) := (others => '0');
   signal RA0 : std_logic_vector(3 downto 0) := (others => '0');
   signal RA1 : std_logic_vector(3 downto 0) := (others => '0');
   signal RA2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OP1_SEL : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DC_CTL PORT MAP (
          CLK => CLK,
          RA => RA,
          RA0 => RA0,
          RA1 => RA1,
          RA2 => RA2,
          OP1_SEL => OP1_SEL
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
		
		RA <= X"0";
		RA0 <= X"1";
		RA1 <= X"2";
		RA2 <= X"3";
		
		wait for CLK_period;
		
		RA0 <= X"0";
		
		wait for CLK_period;
		
		RA1 <= X"0";
		
		wait for CLK_period;
		
		RA0 <= X"1";
		

      -- insert stimulus here 

      wait;
   end process;

END;
