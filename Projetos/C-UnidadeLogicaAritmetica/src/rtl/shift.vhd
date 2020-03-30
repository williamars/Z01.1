library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
            q:   out STD_LOGIC_VECTOR(15 downto 0);
            right: in STD_LOGIC);

end entity;

architecture arch of shift is
begin


    q(15 downto 0) <= '0' & a(15 downto 1) when right = '1' else
        a(14 downto 0) & '0';
    

end architecture;
