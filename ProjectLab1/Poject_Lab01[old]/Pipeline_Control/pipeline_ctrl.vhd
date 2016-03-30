----------------------------------------------------------------------------------
-- Create Date:    16:41:34 03/11/2016 
-- Design Name: 	Pipeline Control
-- Team:				Team 5    
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Used to control flow of instruction words through Pipeline State Machine
--States include: Fetch, Decode, Operand Access, Execute, Store
--Function of states is controlled by the Control Modules

entity pipeline_ctrl is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           INST_WD : in  STD_LOGIC_VECTOR (15 downto 0);  --Instruction word
           PIP_CTRL : out  STD_LOGIC_VECTOR (15 downto 0));
end pipeline_ctrl;

architecture Structural of pipeline_ctrl is

--State Declarations

	type PIP_CTRL_STATES is (INIT,FETCH,DECODE,OP_AC,EXECUTE,STORE);

	signal CURRENT_STATE: PIP_CTRL_STATES :=INIT;
	
	--State Completion Flags
	signal FETCH_COMP: STD_LOGIC := '0';
	signal DECODE_COMP: STD_LOGIC := '0';
	signal OP_COMP: STD_LOGIC := '0';
	signal EX_COMP: STD_LOGIC := '0';
	signal STORE_COMP: STD_LOGIC := '0';

--Pipeline State Machine Implementation	
	PIP_STATE_MACH: process(CLK)
    begin
        if(RST = '1') then
            CURRENT_STATE <= INIT;
        else
            case CURRENT_STATE is
                when INIT => 
                    CURRENT_STATE <= FETCH;
                   
                when FETCH =>
                    if(FETCH_COMP = '1') then
                     CURRENT_STATE <= DECODE;
                    end if;
                    
                when DECODE =>
                    if (DECODE_COMP = '1') then 
                        CURRENT_STATE <= OP_AC;
                    end if;
                when OP_AC =>
                    if(OP_COMP = '1') then
                        CURRENT_STATE <= EXECUTE;
                    end if;
                when EXECUTE =>
							if (EX_COMP = '1') then
								CURRENT_STATE <= STORE;
					 when STORE =>
							if(STORE_COMP = '1') then
								CURRENT_STATE <= FETCH;
            END CASE;
        END IF;
    END PROCESS PIP_STATE_MACH;

end Structural;

