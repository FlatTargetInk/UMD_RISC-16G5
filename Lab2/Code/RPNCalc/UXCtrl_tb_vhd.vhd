-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT UXCntl_Unit
          PORT(INPUT		: in	STD_LOGIC_VECTOR (7 downto 0);
					CMD		: in	STD_LOGIC_VECTOR (3 downto 0);
					VALA		: out	STD_LOGIC_VECTOR (7 downto 0);
					VALB		: out STD_LOGIC_VECTOR (7 downto 0);
					OPCODE	: out STD_LOGIC_VECTOR (3 downto 0));
          END COMPONENT;

			-- Inputs --
			--SIGNAL mTest	: STD_LOGIC := '0';
			SIGNAL mINPUT	: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
			SIGNAL mCMD		: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');
			
			-- Outputs --
			SIGNAL mVALA		: STD_LOGIC_VECTOR (7 downto 0);
			SIGNAL mVALB		: STD_LOGIC_VECTOR (7 downto 0);
			SIGNAL mOPCODE	: STD_LOGIC_VECTOR (3 downto 0);
			
			-- Contstants --
			constant period : time := 10 ns; -- 50 MHz =(1/10E-9)/2
			
			-- Condition Codes --
			SIGNAL CLK	  :	STD_LOGIC := '0';
			SIGNAL ALATCH :	STD_LOGIC := '0';
			SIGNAL BLATCH :	STD_LOGIC := '0';
			SIGNAL OPLATCH :	STD_LOGIC := '0';

  BEGIN

  -- Component Instantiation
          uut: UXCntl_Unit PORT MAP(
                  INPUT		=> mINPUT,
						CMD		=> mCMD,
						VALA		=> mVALA,
						VALB		=> mVALB,
						OPCODE	=> mOPCODE
						--test		=> mTest
          );
			 
			-- Assign Condition Codes
			ALATCH	<= mCMD(3);
			BLATCH	<= mCMD(2);
			OPLATCH	<= mCMD(1);
			
			-- Generate clock
    gen_Clock: process
    begin
        CLK <= '0'; wait for period;
       CLK <= '1'; wait for period;
    end process gen_Clock;
		
		--  Test Bench Statements
     tb : PROCESS
     BEGIN
			wait for 100 ns;
			
			report "Start ALU Test Bench" severity NOTE;
        
        ----- Register-Register Arithmetic Tests -----
        mINPUT <= "00000101"; -- 5
        mCMD <= "0000"; -- LATCH A
		  --mTest <= '0';
		  
        wait for 100 ns; -- wait until global set/reset completes
		  
		  --mTest <= '1';
		  mCMD <= "1000";
		  
		  wait for 100 ns;
		  mCMD <= "0000";
		  wait for 100 ns;
		  
		  assert (mVALA = mINPUT)  report "Failed LATCH A. VALA=" & integer'image(to_integer(unsigned(mVALA))) severity ERROR;

        -- Add user defined stimulus here
			mINPUT <= "11001100";
			mCMD <= "0100";	-- latch b
			
			wait for 100 ns;
			mCMD <= "0000";
			assert (mVALB = mINPUT)  report "Failed LATCH A. VALA=" & integer'image(to_integer(unsigned(mVALB))) severity ERROR;

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
