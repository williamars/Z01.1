library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity impressora is
	port (
    SW1: in  STD_LOGIC;
    SW2: in  STD_LOGIC;
    SW3: in  STD_LOGIC;
    SW4: in  STD_LOGIC;
    x : out STD_LOGIC );
end entity;

architecture arch of impressora is

begin

    x <= (SW2 and (SW1 or SW4 or SW3)) or (SW3 and (SW4 or SW1));

end architecture;
