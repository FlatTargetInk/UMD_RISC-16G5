--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:48:20 04/08/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/ProjectLab1/Poject_Lab01/Project1/ALU_tb.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_Toplevel
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
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Toplevel
    PORT(
         RA : IN  std_logic_vector(15 downto 0);
         RB : IN  std_logic_vector(15 downto 0);
         OP : IN  std_logic_vector(3 downto 0);
         CLK : IN  std_logic;
         ALU_OUT : OUT  std_logic_vector(15 downto 0);
         SREG : OUT  std_logic_vector(3 downto 0);
         LDST_DAT : OUT  std_logic_vector(15 downto 0);
         LDST_ADR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RA : std_logic_vector(15 downto 0) := (others => '0');
   signal RB : std_logic_vector(15 downto 0) := (others => '0');
   signal OP : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal ALU_OUT : std_logic_vector(15 downto 0);
   signal SREG : std_logic_vector(3 downto 0);
   signal LDST_DAT : std_logic_vector(15 downto 0);
   signal LDST_ADR : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Toplevel PORT MAP (
          RA => RA,
          RB => RB,
          OP => OP,
          CLK => CLK,
          ALU_OUT => ALU_OUT,
          SREG => SREG,
          LDST_DAT => LDST_DAT,
          LDST_ADR => LDST_ADR
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
		
		OP <= "0000";
		RA <= X"0001";
		RB <= X"0004";
		
		wait for CLK_period;
		
		OP <= "1001";
		
		wait for CLK_period;
		
		OP <= "1010";
		
		wait for CLK_period;
		
		OP <= "1001";

      -- insert stimulus here 

      wait;
   end process;

END;
