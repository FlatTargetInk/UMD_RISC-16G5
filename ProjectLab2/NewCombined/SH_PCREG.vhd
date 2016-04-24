----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:19 04/22/2016 
-- Design Name: 
-- Module Name:    SH_PCREG - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SH_PCREG is
	generic(	PCWIDTH:integer:=5;
				STACKDEPTH:integer:=4);
   Port (CLK		: in STD_LOGIC;
			RST		: in STD_LOGIC;
			ADRIN		: in STD_LOGIC_VECTOR(PCWIDTH-1 downto 0);
			EN			: in STD_LOGIC;
			WR			: in STD_LOGIC;	-- '1' is Push, '0' is Pop
			ADROUT	: buffer	STD_LOGIC_VECTOR(PCWIDTH-1 downto 0);
			OVFLW		: out STD_LOGIC);
end SH_PCREG;

architecture Behavioral of SH_PCREG is

type REG_ARRAY_TYPE is array (0 to STACKDEPTH-2) of STD_LOGIC_VECTOR(PCWIDTH-1 downto 0);
signal PC_STACK: REG_ARRAY_TYPE;

begin

--ADROUT <= PC_STACK(0);

process(CLK,RST)
begin
	if RST = '1' then
		PC_STACK <= (OTHERS => (OTHERS => '0'));
		ADROUT	<= (OTHERS => '0');
	elsif (CLK'event and CLK = '1' and EN = '1') then
		case WR is
			when '1'	=> 
--				case PC_STACK(3) is
--					when "00000"	=> OVFLW <= '0';
--					when OTHERS				=> OVFLW <= '1';
--				end case;
				PC_STACK(2) <= PC_STACK(1);
				PC_STACK(1) <= PC_STACK(0);
				PC_STACK(0) <= ADROUT;
				ADROUT 		<= ADRIN;
--				ADROUT		<= PC_STACK(0);
			WHEN '0' =>
--				ADROUT <= PC_STACK(0);
				ADROUT 		<= PC_STACK(0);
				PC_STACK(0) <= PC_STACK(1);
				PC_STACK(1) <= PC_STACK(2);
				PC_STACK(2) <= (OTHERS => '0');
			when OTHERS => ADROUT <= ADRIN;	-- Sort of a do nothing
		end case;
--		ADROUT <= PC_STACK(0);
	end if;
end process;

end Behavioral;

