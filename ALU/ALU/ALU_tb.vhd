--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:48:55 04/01/2016
-- Design Name:   
-- Module Name:   /home/robert/UMD_RISC-16G5/ALU/ALU/ALU_tb.vhd
-- Project Name:  ALU
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
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
 
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
   -- No clocks detected in port list. Replace CLK below with 
   -- appropriate port name 
 
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Toplevel PORT MAP (
          RA => RA,
          RB => RB,
          OP => OP,
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
		
		RA <= X"0002";
		RB <= X"0001"; 
		OP <= "0000";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0003") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0001";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0001") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0010";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0000") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0011";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0003") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0100";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0001") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0101";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0003") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0110";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0000") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "0111";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0004") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		OP <= "1000";
		
		wait for CLK_period;
		
		assert (ALU_OUT = X"0001") report "Incorrect Result" & integer'image(to_integer(unsigned(ALU_OUT))) severity ERROR;
		
		
		
		
		
		
--		for i in 0 to 15 loop
--			OP <= to_stdlogicvector(i);
--			wait for CLK_period;
--		end loop;

      -- insert stimulus here 

      wait;
   end process;

END;
