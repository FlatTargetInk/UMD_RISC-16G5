--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:00:58 03/11/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/ProjectLab1/Part1/programCounter_tb.vhd
-- Project Name:  Part1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: programCounter
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
 
ENTITY programCounter_tb IS
END programCounter_tb;
 
ARCHITECTURE behavior OF programCounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT programCounter
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         RST : IN  std_logic;
         INSADR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal INSADR : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: programCounter PORT MAP (
          CLK => CLK,
          EN => EN,
          RST => RST,
          INSADR => INSADR
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
		EN <= '1';

      wait for CLK_period*10;

      -- insert stimulus here 
		
      wait;
   end process;

END;
