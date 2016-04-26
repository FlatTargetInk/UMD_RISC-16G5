----------------------------------------------------------------------------------
-- Company: UMASS DARTMOUTH
-- Engineer: Christopher Parks (cparks13@live.com)
-- 
-- Create Date:    15:49:41 04/13/2016 
-- Module Name:    BranchPredictor - Behavioral 
-- Description: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity BranchPredictor is
    Port ( 		  CLK : in STD_LOGIC;
			  ALUBranch : in STD_LOGIC;
					 OPC1 : in STD_LOGIC_VECTOR(3 downto 0); -- The OPCode at OP1
					 OPC3 : in STD_LOGIC_VECTOR(3 downto 0); -- The OPCode at OP3
					VALID : out STD_LOGIC;
				  Branch : out  STD_LOGIC);
end BranchPredictor;
architecture Combinational of BranchPredictor is

type BRANCH_STATE is (DONT_BRANCH, DO_BRANCH);
signal STATE : BRANCH_STATE := DONT_BRANCH;	

begin
	process(CLK)
	begin
		if(rising_edge(CLK) AND OPC3 = x"F") then
			if(OPC3=x"F") then
				case STATE is
					when DONT_BRANCH => 
						case ALUBranch is
							when '0' => STATE  <= DONT_BRANCH;
							when '1' => STATE  <=   DO_BRANCH;
											VALID  <= '0';
							when others => STATE <= DONT_BRANCH;
						end case;
					when   DO_BRANCH =>
						case ALUBranch is
							when '0' => STATE  <= DONT_BRANCH;
							when '1' => STATE  <=   DO_BRANCH;
							when others => STATE <= DONT_BRANCH;
						end case;
				end case;
			else
				STATE <= DONT_BRANCH;
			end if;
		end if;
	end process;
--	if(OPC1 = x"F") then
--		case STATE is
--			when DONT_BRANCH => Branch <= '0';
--			when   DO_BRANCH => Branch <= '1';
--		end case;
--	else
--		Branch <= '0';
--	end if;
	Branch <= '1' when STATE = DO_BRANCH AND OPC1 = x"F" else
				 '0';
end Combinational;

