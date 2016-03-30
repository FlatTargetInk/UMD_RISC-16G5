--------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks
--
-- Create Date:   13:20:29 03/25/2016
-- Design Name:   
-- Module Name:   Z:/Xilinx/RegisterBank2/RegisterBank_tb.vhd
-- Project Name:  RegisterBank
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterBank
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
USE ieee.numeric_std.ALL;
 
ENTITY RegisterBank_tb IS
END RegisterBank_tb;
 
ARCHITECTURE behavior OF RegisterBank_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterBank
    PORT(
         RAddr : IN  std_logic_vector(3 downto 0);
         RBddr : IN  std_logic_vector(3 downto 0);
         RWddr : IN  std_logic_vector(3 downto 0);
         DATAIN : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         R : IN  std_logic;
         W : IN  std_logic;
         RAout : OUT  std_logic_vector(15 downto 0);
         RBout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RAddr : std_logic_vector(3 downto 0) := (others => '0');
   signal RBddr : std_logic_vector(3 downto 0) := (others => '0');
   signal RWddr : std_logic_vector(3 downto 0) := (others => '0');
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
   uut: RegisterBank PORT MAP (
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
		
		W <= '1'; -- Enable write
		wait for clk_period;
		
		for i in 0 to 15 loop
			RWddr <= std_logic_vector(to_unsigned(i, RWddr'length));
			wait for clk_period;
			DATAIN <= std_logic_vector(to_unsigned(i,DATAIN'length));
			wait for clk_period;
		end loop;
		
		W <= '0';
		R <= '1';
		wait for clk_period;
		
		for i in 0 to 14 loop
			RAddr <= std_logic_vector(to_unsigned(i,RAddr'length));
			RBddr <= std_logic_vector(to_unsigned(i+1,RBddr'length));
			wait for clk_period;
			assert (RAout(3 downto 0) = RAddr) report "wrong value" severity error;
			assert (RBout(3 downto 0) = RBddr) report "wrong value" severity error;
		end loop;
      wait;
   end process;

END;
