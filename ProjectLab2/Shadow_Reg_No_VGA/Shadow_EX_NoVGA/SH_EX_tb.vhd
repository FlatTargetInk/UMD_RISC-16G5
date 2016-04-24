--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:22:56 04/14/2016
-- Design Name:   
-- Module Name:   /home/tj/Desktop/UMD_RISC-16G5/ProjectLab2/Shadow_Register/Lab04/SH_EX_tb.vhd
-- Project Name:  Lab04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ProjLab01
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
 
ENTITY SH_EX_tb IS
END SH_EX_tb;
 
ARCHITECTURE behavior OF SH_EX_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProjLab01
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         ALU_OUT : OUT  std_logic_vector(15 downto 0);
         DST_ADR : OUT  std_logic_vector(15 downto 0);
         STORE_DATA : OUT  std_logic_vector(15 downto 0);
         CCR : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal ALU_OUT : std_logic_vector(15 downto 0);
   signal DST_ADR : std_logic_vector(15 downto 0);
   signal STORE_DATA : std_logic_vector(15 downto 0);
   signal CCR : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProjLab01 PORT MAP (
          CLK => CLK,
          RST => RST,
          ALU_OUT => ALU_OUT,
          DST_ADR => DST_ADR,
          STORE_DATA => STORE_DATA,
          CCR => CCR
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
			
      wait for CLK_period*10;
		
      -- insert stimulus here 

      wait;
   end process;

END;
