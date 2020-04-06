-- Elementos de Sistemas
-- developed by Luciano Soares
-- tb_FlipFlopJK.vhd
-- date: 4/4/2017

Library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_FlipFlopJK is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_FlipFlopJK is

	component FlipFlopJK is
		port(
			clock:  in std_logic;
			J:  in std_logic;
			K: in std_logic;
			q:     out std_logic:='0';
            notq:  out std_logic :='1'
		);
	end component;

	signal inClock : std_logic := '0';
	signal inJ : STD_LOGIC;
	signal inK : STD_LOGIC;
    signal outNotQ: STD_LOGIC;
	signal outQ : STD_LOGIC;

begin

	mapping: FlipFlopJK port map(inClock, inJ, inK, outNotQ, outQ);

	inClock <= not inClock after 100 ps;

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

		-- Teste: 0
	    inJ <= '0'; inK <= '0'; 
    wait until inClock'event and inClock='0';
		assert(outQ = outQ)  report "Falha em teste: 0" severity error;

		-- Teste: 1
		inJ <= '0'; inK <= '1'; 
    wait until inClock'event and inClock='0';
		assert(outQ = '0')  report "Falha em teste: 1" severity error;

		-- Teste: 2
		inJ <= '1'; inK <= '1'; 
    wait until inClock'event and inClock='0';
		assert(outQ = outNotQ)  report "Falha em teste: 2" severity error;

		-- Teste: 3
		inJ <= '1'; inK <= '0'; 
    wait until inClock'event and inClock='0';
		assert(outQ = '1')  report "Falha em teste: 3" severity error;

        -- finish 
    wait until inClock'event and inClock='0';
    test_runner_cleanup(runner); -- Simulation ends here

	wait;
  end process;
end architecture;
