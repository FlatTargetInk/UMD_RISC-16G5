--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:43:07 04/22/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/ProjectLab2/ProgramCounter/ProgramCounter/SH_tb.vhd
-- Project Name:  ProgramCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SH_PCREG
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
 
ENTITY SH_tb IS
END SH_tb;
 
ARCHITECTURE behavior OF SH_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SH_PCREG
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         ADRIN : IN  std_logic_vector(4 downto 0);
         EN : IN  std_logic;
         WR : IN  std_logic;
         ADROUT : BUFFER  std_logic_vector(4 downto 0);
         OVFLW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal ADRIN : std_logic_vector(4 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal WR : std_logic := '0';

 	--Outputs
   signal ADROUT : std_logic_vector(4 downto 0);
   signal OVFLW : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SH_PCREG PORT MAP (
          CLK => CLK,
          RST => RST,
          ADRIN => ADRIN,
          EN => EN,
          WR => WR,
          ADROUT => ADROUT,
          OVFLW => OVFLW
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
		
		RST <= '1';
		
		wait for CLK_period;
		
		RST<= '0';
		
		wait for CLK_period;
		
		ADRIN <= "10001";
		WR <= '1';
		EN <= '1';
		
		wait for CLK_period;
		
		ADRIN <= "10010";
		
		wait for CLK_period;
		
		ADRIN <= "10100";
		
		wait for CLK_period;
		
		ADRIN <= "11000";
		
		wait for CLK_period;
		
--		ADRIN <= "11111";
--		
--		wait for CLk_period;
		
		WR <= '0';
		
		wait for CLK_period*4;
		
		ADRIN <= "11111";
		WR <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
