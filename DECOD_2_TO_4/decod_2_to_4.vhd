--
--					 DECODIFICADOR 2 EM 4
--
--				AUTOR: EDWILDSON C. RODRIGUES
--
--		UNIVERSIDADE FEDERAL DO VALE DO SÃO FRANCISCO
--
--					   DATA: 27/07/2018
--

library IEEE;
use IEEE.std_logic_1164.all;

entity decod_2_to_4 is port(
	A: in std_logic_vector(1 downto 0);
	O:	out std_logic_vector(3 downto 0);
	EN: in std_logic
);
end decod_2_to_4;

architecture hardware of decod_2_to_4 is 
begin
process(EN, A)
begin
	O <= "ZZZZ";
	
		if (EN = '1' ) then
			
			case A is
					when "00" => O <= "0001";
					when "01" => O <= "0010";
					when "10" => O <= "0100";
					when "11" => O <= "1000";
			end case;
		end if;
end process;
end hardware;