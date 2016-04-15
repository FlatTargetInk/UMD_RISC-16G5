--------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks
--
-- Create Date:   16:47:50 04/11/2016
-- Module Name:   ProgramCounter_tb.vhd
-- Project Name:  ProgramCounter
-- Description:   
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
USE ieee.numeric_std.ALL;
 
ENTITY ProgramCounter_tb IS
END ProgramCounter_tb;
 
ARCHITECTURE behavior OF ProgramCounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProgramCounter
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         OPMODE : IN  std_logic_vector(1 downto 0);
         OFFSET : IN  std_logic_vector(15 downto 0);
         INSADR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal OPMODE : std_logic_vector(1 downto 0) := (others => '0');
   signal OFFSET : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal INSADR : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          CLK => CLK,
          EN => EN,
          OPMODE => OPMODE,
          OFFSET => OFFSET,
          INSADR => INSADR
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
		EN <= '0';
		wait for CLK_period;
		EN <= '1';
		OPMODE <= "00";
		OFFSET <= x"0000";
      wait for CLK_period; -- Device enabled, in reset mode
		assert(INSADR = x"0000") report "Reset failure." severity ERROR;
		
		OPMODE <= "01";
		for i in 1 to 15 loop
			wait for CLK_period; -- Device enabled, in normal operation mode (PC+1)
			assert(INSADR = std_logic_vector(to_unsigned(i, INSADR'length))) report "PC+1 failure." severity ERROR;
		end loop; -- Now: INSADR = 15
		
		OFFSET <= x"000F"; -- Jump PC to 1E
		OPMODE <= "10"; -- Set mode PC+OFFSET, hold for 1 CLK period
		wait for CLK_period; -- Device enabled, in offset (jump) mode (PC+OFFSET) INSADR = 1E
		assert(INSADR = x"001E") report "PC+OFFSET failure." severity ERROR;
		
		OFFSET <= x"0000";
		OPMODE <= "11"; -- Jump PC back to F.
		wait for CLK_period; -- Device enabled, in return mode (RTL) INSADR = F+1 (10)
		assert(INSADR = x"0010") report "RTL failure." severity ERROR;
		
		OPMODE <= "00";
		wait for CLK_period; -- Device enabled, in reset mode (RST) INSADR = 0
		assert (INSADR = x"0000") report "2nd reset failure." severity ERROR;
		
		OPMODE <= "01"; -- Return to normal operation mode (PC+1) for the rest of simulation
		wait for CLK_period*15; -- Wait until PC counts back to F
		assert(INSADR = x"000F") report "PC+1 failure." severity ERROR;
		
		OFFSET <= x"0002";
		OPMODE <=  "10"; -- Begin JMP mode (PC+OFFSET)
		wait for CLK_period; -- INSADR = 11
		assert(INSADR = x"0011") report "PC+OFFSET failure." severity ERROR;
		wait for CLK_period; -- INSADR = 13
		assert(INSADR = x"0013") report "PC+OFFSET failure." severity ERROR;
		wait for CLK_period; -- INSADR = 15
		assert(INSADR = x"0015") report "PC+OFFSET failure." severity ERROR;
		wait for CLK_period; -- INSADR = 17
		assert(INSADR = x"0017") report "PC+OFFSET failure." severity ERROR;
		-- Max jump depth.
		
		OPMODE <= "11"; -- Begin RETURN mode (RTL)
		wait for CLK_period;
		assert(INSADR = x"0016") report "RTL failure." severity ERROR;
		wait for CLK_period;
		assert(INSADR = x"0014") report "RTL failure." severity ERROR;
		wait for CLK_period;
		assert(INSADR = x"0012") report "RTL failure." severity ERROR;
		wait for CLK_period;
		assert(INSADR = x"0010") report "RTL failure." severity ERROR;
		
		OPMODE <= "01"; -- Back to NORMAL mode (PC+1)
      -- insert stimulus here 

      wait;
   end process;

END;
