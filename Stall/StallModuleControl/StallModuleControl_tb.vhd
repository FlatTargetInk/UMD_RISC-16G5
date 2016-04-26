--------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks (cparks13@live.com)
--
-- Create Date:   14:11:08 04/25/2016
-- Module Name:   Z:/Xilinx/StallModuleControl/StallModuleControl_tb.vhd
-- Project Name:  StallModuleControl
-- Target Device:  SPARTAN 3E XC3S500E-4FG320 
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: StallModuleControl
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
USE ieee.numeric_std.ALL;
 
ENTITY StallModuleControl_tb IS
END StallModuleControl_tb;
 
ARCHITECTURE behavior OF StallModuleControl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT StallModuleControl
    PORT(
         CLK : IN  std_logic;
         GUESS : IN  std_logic;
         ACTUAL : IN  std_logic;
         STALL : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal GUESS : std_logic := '0';
   signal ACTUAL : std_logic := '0';

 	--Outputs
   signal STALL : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: StallModuleControl PORT MAP (
          CLK => CLK,
          GUESS => GUESS,
          ACTUAL => ACTUAL,
          STALL => STALL
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
		GUESS <= '0'; -- (0,0)
		ACTUAL <= '0';
      wait for CLK_period;
		
		
		GUESS <= '1'; -- (1,1)
		ACTUAL <= '1';
		wait for CLK_period;
		GUESS <= '0';
		ACTUAL <= '0';
		wait for CLK_period;
		
		assert(STALL = '1') report "Module failed to output stall signal for 1 cycle." severity ERROR;
		
		GUESS <= '1'; -- (1,0)
		ACTUAL <= '0';
		wait for CLK_period;
		GUESS <= '0';
		ACTUAL <= '0'; -- Redundancy for easier understanding of code
		wait for CLK_period;
		
		for i in 0 to 3 loop -- Wait for 4 cycles to ensure a stall control signal for 4 cycles
			assert(STALL = '1') report "Module failed to output stall signal for 4 cycles." severity ERROR;
			wait for CLK_period;
		end loop;
		
		GUESS <= '0';
		ACTUAL <= '1';
		wait for CLK_period;
		GUESS <= '0'; -- Redundancy for easier understanding of code
		ACTUAL <= '0';
		wait for CLK_period;
		
		for i in 0 to 3 loop -- Check for 4 cycles that a stall control signal is being put out
			assert(STALL = '1') report "Module failed to output stall signal for 4 cycles." severity ERROR;
			wait for CLK_period;
		end loop;
   wait;
   end process;

END;
