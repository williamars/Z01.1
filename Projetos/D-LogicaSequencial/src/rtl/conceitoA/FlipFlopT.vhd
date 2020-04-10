-- Elementos de Sistemas
-- FlipFlopT.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopT is
	port(
		clock:  in std_logic;
		t:      in std_logic;
		q:      out std_logic:= '1';
		notq:   out std_logic:= '0'
	);
end entity;

architecture arch of FlipFlopT is

signal temp, notTemp: std_logic;

begin
    
    
    temp <= q;

	process(clock) begin

        if (rising_edge(clock)) then
            if (t='0') then
                q <= temp;
            elsif (t='1') then 
                q <= not temp;
            end if;
        end if;

    end process;

end architecture;
