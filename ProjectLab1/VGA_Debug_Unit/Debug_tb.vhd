--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:51:58 03/09/2016
-- Design Name:   
-- Module Name:   Z:/ECE 368/Lab04/Debug_tb.vhd
-- Project Name:  Lab04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_Debug
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
 
ENTITY Debug_tb IS
END Debug_tb;
 
ARCHITECTURE behavior OF Debug_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_Debug
    PORT(
         CLK : IN  std_logic;
         BTN : IN  std_logic_vector(3 downto 0);
         SW : IN  std_logic_vector(7 downto 0);
         HSYNC : OUT  std_logic;
         VSYNC : OUT  std_logic;
         VGARED : OUT  std_logic_vector(2 downto 0);
         VGAGRN : OUT  std_logic_vector(2 downto 0);
         VGABLU : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal BTN : std_logic_vector(3 downto 0) := (others => '0');
   signal SW : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal HSYNC : std_logic;
   signal VSYNC : std_logic;
   signal VGARED : std_logic_vector(2 downto 0);
   signal VGAGRN : std_logic_vector(2 downto 0);
   signal VGABLU : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_Debug PORT MAP (
          CLK => CLK,
          BTN => BTN,
          SW => SW,
          HSYNC => HSYNC,
          VSYNC => VSYNC,
          VGARED => VGARED,
          VGAGRN => VGAGRN,
          VGABLU => VGABLU
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
