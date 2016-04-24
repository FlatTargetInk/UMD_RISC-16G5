--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:12:55 04/13/2016
-- Design Name:   
-- Module Name:   /home/tj/Desktop/UMD_RISC-16G5/ProjectLab2/Shadow_Register/Lab04/Shadow_Register_tb.vhd
-- Project Name:  Lab04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shadow_Reg
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
 
ENTITY Shadow_Register_tb IS
END Shadow_Register_tb;
 
ARCHITECTURE behavior OF Shadow_Register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shadow_Reg
    PORT(
         RAddr : IN  std_logic_vector(1 downto 0);
         CLK : IN  std_logic;
         RST : IN  std_logic;
         R : IN  std_logic;
         W : IN  std_logic;
         RAout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RAddr : std_logic_vector(1 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal R : std_logic := '0';
   signal W : std_logic := '0';

 	--Outputs
   signal RAout : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shadow_Reg PORT MAP (
          RAddr => RAddr,
          CLK => CLK,
          RST => RST,
          R => R,
          W => W,
          RAout => RAout
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
		
		RST <= '1';
		
      wait for CLK_period*2;
		wait for CLK_period/2;
		
		RST <= '0';

      -- insert stimulus here 

		wait for CLK_period/2;
		
		R <= '1';
		
		--wait for CLK_period;
		
		RAddr <= "00"; 
		
		wait for CLK_period;
		
		RAddr <= "01";
		
		wait for CLK_period;
		
		RAddr <= "10"; 
		
		wait for CLK_period;
		
		RAddr <= "11"; 
		
		wait for CLK_period*10;

      wait;
   end process;

END;
