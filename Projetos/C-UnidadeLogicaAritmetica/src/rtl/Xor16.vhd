library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Xor16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture arch of Xor16 is
begin

    q<= a XOR b;

end architecture;
