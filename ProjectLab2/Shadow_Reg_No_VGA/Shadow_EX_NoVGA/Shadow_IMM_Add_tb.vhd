--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:54 04/15/2016
-- Design Name:   
-- Module Name:   /home/tj/Desktop/UMD_RISC-16G5/ProjectLab2/Shadow_Reg_No_VGA/Shadow_EX_NoVGA/Shadow_IMM_Add_tb.vhd
-- Project Name:  Shadow_EX_NoVGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shadow_IMM_Add
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
 
ENTITY Shadow_IMM_Add_tb IS
END Shadow_IMM_Add_tb;
 
ARCHITECTURE behavior OF Shadow_IMM_Add_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shadow_IMM_Add
    PORT(
         SHADOW : IN  std_logic_vector(15 downto 0);
         IMM : IN  std_logic_vector(3 downto 0);
         EX_ADDR : OUT  std_logic_vector(13 downto 0)
        );
    END COMPONENT;
    

   --Inputs
	signal CLK	  : std_logic := '0';
   signal SHADOW : std_logic_vector(15 downto 0) := (others => '0');
   signal IMM : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal EX_ADDR : std_logic_vector(13 downto 0);
   -- No clocks detected in port list. Replace CLK below with 
   -- appropriate port name 
 
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shadow_IMM_Add PORT MAP (
          SHADOW => SHADOW,
          IMM => IMM,
          EX_ADDR => EX_ADDR
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
		
		SHADOW <= x"0001";
		
		--EX_ADDR = 1
		
		wait for CLK_period*2;
		
		IMM	 <= X"1";
		
		--EX_ADDR = 2
		
		wait for CLK_period*2;
		
		SHADOW <= X"0002";
		
		--EX_ADDR = 3
		
		wait for CLK_period*2;
		
		IMM	 <= X"2";
		
		--EX_ADDR = 4
		
		wait for CLK_period*2;
		
		SHADOW <= X"0003";
		
		--EX_ADDR = 5
		
		wait for CLK_period*2;
		
		IMM	 <= X"3";
		
		--EX_ADDR = 6
      -- insert stimulus here 

      wait;
   end process;

END;
