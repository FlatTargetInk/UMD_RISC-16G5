--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:15:39 04/13/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/ProjectLab2/ProgramCounter/ProgramCounter/IM_tb.vhd
-- Project Name:  ProgramCounter
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
 
ENTITY IM_tb IS
END IM_tb;
 
ARCHITECTURE behavior OF IM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Instruction_Memory_TL
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         BRANCH : IN  std_logic;
         BRNCH_ADR : IN  std_logic_vector(11 downto 0);
         RA : OUT  std_logic_vector(3 downto 0);
         RB : OUT  std_logic_vector(3 downto 0);
         OP : OUT  std_logic_vector(3 downto 0);
         IMM : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal JMP : std_logic := '0';
   signal OFFSET : std_logic_vector(11 downto 0) := (others => '0');
   signal RTN : std_logic := '0';

 	--Outputs
   signal RA : std_logic_vector(3 downto 0);
   signal RB : std_logic_vector(3 downto 0);
   signal OP : std_logic_vector(3 downto 0);
   signal IMM : std_logic_vector(7 downto 0);
   signal INS_OFFSET : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Instruction_Memory_TL PORT MAP (
          CLK => CLK,
          RST => RST,
          JMP => JMP,
          OFFSET => OFFSET,
          RTN => RTN,
          RA => RA,
          RB => RB,
          OP => OP,
          IMM => IMM,
          INS_OFFSET => INS_OFFSET
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
		RST <= '1';
      wait for 100 ns;	
		RST <= '0';

      wait for CLK_period*20;
		
		BRNCH_ADR
		
--		OFFSET <= "111111111100";
--		JMP	<= '1';
--		
--		wait for CLK_period;
--		
--		JMP <= '0';
--		
--		wait for CLK_period*3;
--		
--		RTN <= '1';
--		
--		wait for CLK_period;
		

      -- insert stimulus here 

      wait;
   end process;

END;
