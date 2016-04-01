--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:12:10 03/30/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/ProjectLab1/Poject_Lab01/ProjLab1/DCCTL_tb.vhd
-- Project Name:  ProjLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DC_CTL
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
 
ENTITY DCCTL_tb IS
END DCCTL_tb;
 
ARCHITECTURE behavior OF DCCTL_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DC_CTL
    PORT(
         CLK : IN  std_logic;
         RA : IN  std_logic_vector(3 downto 0);
			RB : IN 	std_logic_vector(3 downto 0);
         RA0 : IN  std_logic_vector(3 downto 0);
         RA1 : IN  std_logic_vector(3 downto 0);
         RA2 : IN  std_logic_vector(3 downto 0);
--         RB0 : IN  std_logic_vector(3 downto 0);
--         RB1 : IN  std_logic_vector(3 downto 0);
--         RB2 : IN  std_logic_vector(3 downto 0);
         OPC : IN  std_logic_vector(3 downto 0);
         OP1_SEL : OUT  std_logic_vector(1 downto 0);
         OP2_SEL : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RA : std_logic_vector(3 downto 0) := (others => '0');
	signal RB : std_logic_vector(3 downto 0) := (others => '0');
   signal RA0 : std_logic_vector(3 downto 0) := (others => '1');
   signal RA1 : std_logic_vector(3 downto 0) := (others => '1');
   signal RA2 : std_logic_vector(3 downto 0) := (others => '1');
--   signal RB0 : std_logic_vector(3 downto 0) := (others => '0');
--   signal RB1 : std_logic_vector(3 downto 0) := (others => '0');
--   signal RB2 : std_logic_vector(3 downto 0) := (others => '0');
   signal OPC : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OP1_SEL : std_logic_vector(1 downto 0);
   signal OP2_SEL : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DC_CTL PORT MAP (
          CLK => CLK,
          RA => RA,
			 RB => RB,
          RA0 => RA0,
          RA1 => RA1,
          RA2 => RA2,
--          RB0 => RB0,
--          RB1 => RB1,
--          RB2 => RB2,
          OPC => OPC,
          OP1_SEL => OP1_SEL,
          OP2_SEL => OP2_SEL
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
      wait for CLK_period*10;
		
		RA0 <= "0000";
		
		wait for CLK_period;
		
		RA1 <= "0000";
		
		wait for CLK_period;
		
		RA2 <= "0000";

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
