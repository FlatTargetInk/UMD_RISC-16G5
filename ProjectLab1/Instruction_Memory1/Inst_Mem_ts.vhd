--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:40:38 04/01/2016
-- Design Name:   
-- Module Name:   Z:/ECE 368/Poject_Lab01/Instruction_Memory1/Inst_Mem_ts.vhd
-- Project Name:  Instruction_Memory1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Instruction_Memory_TL
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
 
ENTITY Inst_Mem_ts IS
END Inst_Mem_ts;
 
ARCHITECTURE behavior OF Inst_Mem_ts IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Instruction_Memory_TL
    PORT(
         CLK : IN  std_logic;
         RA : OUT  std_logic_vector(3 downto 0);
         RB : OUT  std_logic_vector(3 downto 0);
         OP : OUT  std_logic_vector(3 downto 0);
         IMM : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';

 	--Outputs
   signal RA : std_logic_vector(3 downto 0);
   signal RB : std_logic_vector(3 downto 0);
   signal OP : std_logic_vector(3 downto 0);
   signal IMM : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Instruction_Memory_TL PORT MAP (
          CLK => CLK,
          RA => RA,
          RB => RB,
          OP => OP,
          IMM => IMM
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

      -- insert stimulus here 

      wait;
   end process;

END;
