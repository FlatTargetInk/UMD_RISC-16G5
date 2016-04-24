--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:11:49 04/15/2016
-- Design Name:   
-- Module Name:   /home/tj/Desktop/UMD_RISC-16G5/ProjectLab2/Shadow_Reg_No_VGA/Shadow_EX_NoVGA/EX_MEM_CTL_tb.vhd
-- Project Name:  Shadow_EX_NoVGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EX_MEM_CTL
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
 
ENTITY EX_MEM_CTL_tb IS
END EX_MEM_CTL_tb;
 
ARCHITECTURE behavior OF EX_MEM_CTL_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EX_MEM_CTL
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         OP : IN  std_logic_vector(3 downto 0);
         RD_EN : OUT  std_logic;
         WR_EN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal OP : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal RD_EN : std_logic;
   signal WR_EN : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EX_MEM_CTL PORT MAP (
          CLK => CLK,
          EN => EN,
          OP => OP,
          RD_EN => RD_EN,
          WR_EN => WR_EN
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

      wait for CLK_period*2;
		EN <= '0';
		
		 wait for CLK_period*2;
		EN <= '1';
		
		 wait for CLK_period*2;
		OP <= "1011";
		
		wait for CLK_period*2;
		OP <= "1100";
		
		wait for CLK_period*2;
		OP <= "0000";
		
		 wait for CLK_period*2;
		EN <= '0';
		
		 wait for CLK_period*2;
		OP <= "1011";
		
		wait for CLK_period*2;
		OP <= "1100";
		
		wait for CLK_period*2;
		OP <= "0000";
      -- insert stimulus here 

      wait;
   end process;

END;
