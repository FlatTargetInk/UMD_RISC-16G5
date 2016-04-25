--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:10:11 04/22/2016
-- Design Name:   
-- Module Name:   U:/ECE368_Project_Lab1_Team5/jump_unit_tb.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jump_unit
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
 
ENTITY jump_unit_tb IS
END jump_unit_tb;
 
ARCHITECTURE behavior OF jump_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jump_unit
    PORT(
         CLK : IN  std_logic;
         OP : IN  std_logic_vector(3 downto 0);
         CCR : IN  std_logic_vector(3 downto 0);
         MASK : IN  std_logic_vector(3 downto 0);
         IMMD : IN  std_logic_vector(15 downto 0);
         BRSIG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal OP : std_logic_vector(3 downto 0) := (others => '0');
   signal CCR : std_logic_vector(3 downto 0) := (others => '0');
   signal MASK : std_logic_vector(3 downto 0) := (others => '0');
   signal IMMD : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal BRSIG : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jump_unit PORT MAP (
          CLK => CLK,
          OP => OP,
          CCR => CCR,
          MASK => MASK,
          IMMD => IMMD,
          BRSIG => BRSIG
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
      wait for CLK_period*10;

      -- insert stimulus here 
		OP 	<= x"0";
		MASK 	<= x"0";
		CCR 	<= x"0";
      wait for CLK_period;
		
		for i in 0 to 15 loop
			OP <= std_logic_vector(to_unsigned(i,OP'length));
			wait for CLK_period;
			for j in 0 to 3 loop
				MASK <= std_logic_vector(to_unsigned(j,MASK'length));
				wait for CLK_period;
				for k in 0 to 3 loop
					CCR <= std_logic_vector(to_unsigned(k,CCR'length));
					wait for CLK_period;
					
					if(MASK = CCR AND OP = x"F") then -- BRSIG = 1
						assert(BRSIG = '1') report "BRSIG assigned incorrectly, MASK = CCR AND OP = x'F'" severity ERROR;
					elsif(MASK = CCR AND NOT(OP=x"F")) then
						assert(BRSIG = '0') report "BRSIG assigned incorrectly, MASK = CCR AND OP != x'F'." severity ERROR;
					elsif ( NOT(MASK = CCR) AND OP=x"F") then
						assert(BRSIG = '0') report "BRSIG assigned incorrectly, MASK != CCR AND OP = x'F'." severity ERROR;
					else
						assert(BRSIG = '0') report "BRSIG assigned incorrectly, MASK != CCR AND OP != x'F'." severity ERROR;
					end if;
				end loop;
			end loop;
		end loop;
		
		OP   <= x"0";
		MASK <= x"0";
		CCR  <= x"0";
   wait;
   end process;

END;
