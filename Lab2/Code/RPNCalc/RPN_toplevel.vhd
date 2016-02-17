----------------------------------------------------------------------------------
-- School:		University of Massachusetts Dartmouth
-- Department:	Electrical and Computer Engineering
-- Engineers:	
-- 
-- Create Date:    16:43:51 02/12/2016 
-- Design Name: 
-- Module Name:    RPN_toplevel - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.all;

entity RPN_toplevel is
	Port (ADDB		: in STD_LOGIC;
			SUBB		: in STD_LOGIC;
			ENTB	   : in STD_LOGIC;
			CLRB    	: in STD_LOGIC;
			NOIN    	: in  STD_LOGIC_VECTOR (7 downto 0);
			NOOUTA	: out STD_LOGIC_VECTOR (7 downto 0);
			NOOUTB	: out STD_LOGIC_VECTOR (7 downto 0);
			OP			: out STD_LOGIC_VECTOR (3 downto 0));
end RPN_toplevel;

architecture Behavioral of RPN_toplevel is
	signal rega 	: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal regb		: STD_LOGIC_VECTOR (7 downto 0) := (OTHERS => '0');
	signal mopcode	: STD_LOGIC_VECTOR (3 downto 0) := (OTHERS => '0');

begin
	Add_unit: Entity work.Add_unit
	port map(INDATA	=>	NOIN,
				EN			=>	ADDB,
				OUTDATA	=>	NOOUTB,
				CMD		=>	OP);
				
	Sub_unit: Entity work.Sub_unit
	port map(INDATA	=> NOIN,
				EN			=> SUBB,
				OUTDATA	=> NOOUTB,
				CMD		=> OP);
				
	Stack_unit: Entity work.Stack_unit
	port map(INDATA	=> NOIN,
				EN			=> ENTB,
				OUTDATA	=> NOOUTA);
	
	Clear_unit: Entity work.Clear_unit
	port map(EN		=> CLRB,
				CLEAR	=> NOOUTA,
				CLEAR	=> NOOUTB);	-- can I do this?
				

end Behavioral;

