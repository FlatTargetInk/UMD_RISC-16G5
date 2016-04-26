--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:41:05 04/14/2016
-- Design Name:   
-- Module Name:   Z:/Xilinx/BranchPredictor/BranchPredictor_tb.vhd
-- Project Name:  BranchPredictor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BranchPredictor
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
USE ieee.numeric_std.ALL;
 
ENTITY BranchPredictor_tb IS
END BranchPredictor_tb;
 
ARCHITECTURE behavior OF BranchPredictor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BranchPredictor
    PORT(
         CLK : IN  std_logic;
         ALUBranch : IN  std_logic;
         OPC1 : IN  std_logic_vector(3 downto 0);
         OPC3 : IN  std_logic_vector(3 downto 0);
         Branch : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal ALUBranch : std_logic := '0';
   signal OPC1 : std_logic_vector(3 downto 0) := (others => '0');
   signal OPC3 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Branch : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BranchPredictor PORT MAP (
          CLK => CLK,
          ALUBranch => ALUBranch,
          OPC1 => OPC1,
          OPC3 => OPC3,
          Branch => Branch
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
		OPC1 <= x"0";
		OPC3 <= x"0";
		ALUBranch <= '0';
      wait for CLK_period*2;
		for m in 0 to 1 loop
			OPC3 <= std_logic_vector(to_unsigned(m,1))&std_logic_vector(to_unsigned(m,1))&std_logic_vector(to_unsigned(m,1))&std_logic_vector(to_unsigned(m,1));
			for n in 0 to 1 loop
				OPC1 <= std_logic_vector(to_unsigned(n,1))&std_logic_vector(to_unsigned(n,1))&std_logic_vector(to_unsigned(n,1))&std_logic_vector(to_unsigned(n,1));
				for i in 0 to 2 loop
					ALUBranch <= '0';
					wait for CLK_period;
					ALUBranch <= '1';
					wait for CLK_period;
				end loop;
				for i in 0 to 2 loop
					ALUBranch <= '0';
					wait for CLK_period*2;
					ALUBranch <= '1';
					wait for CLK_period*2;
				end loop;
			end loop;
		end loop;
		OPC1 <= x"0";
		OPC3 <= x"0";
		ALUBranch <= '0';

      wait;
   end process;

END;
