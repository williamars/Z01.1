-- Elementos de Sistemas
-- CounterDown.vhd

library ieee;
use ieee.std_logic_1164.all;

entity CounterDown is
	port(
		clock:  in std_logic;
		q:      out std_logic_vector(2 downto 0) :=(others => '0')
	);
end entity;

architecture arch of CounterDown is

	component FlipFlopT is
		port(
		clock:  in std_logic;
		t:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
	end component;

signal q0, q1, q2: std_logic;


begin

	
	t0: FlipFlopT port map(
		clock => clock,
		t =>  '1', 	
		q => q0
		);

	t1: FlipFlopT port map(
		clock => q0,
		t => '1',
		q => q1
	);

	t2: FlipFlopT port map(
		clock => q1,
		t => '1',
		q => q2
	);

	q <= q2 & q1 & q0; 
	
	process(clock) begin

        if (rising_edge(clock)) then
            q <= ;
        end if;

    end process;
	
	
	

end architecture;
