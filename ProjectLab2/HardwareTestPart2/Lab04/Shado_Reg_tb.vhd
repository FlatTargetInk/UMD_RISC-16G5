--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:44 04/12/2016
-- Design Name:   
-- Module Name:   /home/tj/Desktop/UMD_RISC-16G5/ProjectLab2/HardwareTestPart2/Lab04/Shado_Reg_tb.vhd
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
 
ENTITY Shado_Reg_tb IS
END Shado_Reg_tb;
 
ARCHITECTURE behavior OF Shado_Reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shadow_Reg
    PORT(
         RAddr : IN  std_logic_vector(1 downto 0);
         RBddr : IN  std_logic_vector(1 downto 0);
         RWddr : IN  std_logic_vector(1 downto 0);
         DATAIN : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         R : IN  std_logic;
         W : IN  std_logic;
         RAout : OUT  std_logic_vector(15 downto 0);
         RBout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RAddr : std_logic_vector(1 downto 0) := (others => '0');
   signal RBddr : std_logic_vector(1 downto 0) := (others => '0');
   signal RWddr : std_logic_vector(1 downto 0) := (others => '0');
   signal DATAIN : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal R : std_logic := '0';
   signal W : std_logic := '0';

 	--Outputs
   signal RAout : std_logic_vector(15 downto 0);
   signal RBout : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shadow_Reg PORT MAP (
          RAddr => RAddr,
          RBddr => RBddr,
          RWddr => RWddr,
          DATAIN => DATAIN,
          clk => clk,
          R => R,
          W => W,
          RAout => RAout,
          RBout => RBout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
