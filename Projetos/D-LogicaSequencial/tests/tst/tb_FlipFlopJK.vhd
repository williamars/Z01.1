-- Elementos de Sistemas
-- tb_A-FlipFlopJK.vhd

Library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_FlipFlopT is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_FlipFlopT is

	component FlipFlopJK is
    port(
      clock:  in std_logic;
      J:      in std_logic;
      K:      in std_logic;
      q:      out std_logic:= '0';
      notq:   out std_logic:= '1'
      );
	end component;

	signal clk : std_logic := '0';
  signal j,k,outQ,notQ : std_logic;

begin

	mapping: FlipFlopJK port map(clk, j, k, outQ, notQ);

	clk <= not clk after 100 ps;

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    -- IMPLEMENTE AQUI!
    wait until clk'event and clk='0';

    -- Teste: 0
	  j <= '0'; k <= '0'; 
    wait until clk'event and clk='0';
		assert(outQ = outQ)  report "Falha em teste: 0" severity error;

		-- Teste: 1
		j <= '0'; k <= '1'; 
    wait until clk'event and clk='0';
		assert(outQ = '0')  report "Falha em teste: 1" severity error;

		-- Teste: 2
		j <= '1'; k <= '1'; 
    wait until clk'event and clk='0';
		assert(outQ = notQ)  report "Falha em teste: 2" severity error;

		-- Teste: 3
		j <= '1'; k <= '0'; 
    wait until clk'event and clk='0';
		assert(outQ = '1')  report "Falha em teste: 3" severity error;

    -- finish
    wait until clk'event and clk='0';
    test_runner_cleanup(runner); -- Simulation ends here

	wait;
  end process;
end architecture;
