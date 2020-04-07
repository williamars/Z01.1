-- Elementos de Sistemas
-- tb_CounterDown.vhd

Library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_CounterDown is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_CounterDown is

	component CounterDown is
    port(
      clock:  in std_logic;
      q:      out std_logic_vector(2 downto 0)
      );
	end component;

	signal clk : std_logic := '0';
  signal q   : std_logic_vector(2 downto 0);

begin

	mapping: CounterDown port map(clk, q);

	clk <= not clk after 100 ps;

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    -- IMPLEMENTE AQUI!
   
    -- Teste: 0
	  q(2) <= '1'; q(1) <= '1'; q(0) <= '0'; 
    wait until clk'event and clk='0';
		assert(Q= "110")     report "Falha em teste: 0" severity error;

    -- Teste: 1
	  q(2) <= '1'; q(1) <= '0'; q(0) <= '1'; 
    wait until clk'event and clk='0';
		assert(Q= "101")     report "Falha em teste: 1" severity error;

    -- Teste: 2
	  q(2) <= '1'; q(1) <= '0'; q(0) <= '0'; 
    wait until clk'event and clk='0';
		assert(Q= "100")     report "Falha em teste: 2" severity error;

    -- Teste: 3
	  q(2) <= '0'; q(1) <= '1'; q(0) <= '1'; 
    wait until clk'event and clk='0';
		assert(Q= "011")     report "Falha em teste: 3" severity error;

    -- Teste: 4
	  q(2) <= '0'; q(1) <= '1'; q(0) <= '0'; 
    wait until clk'event and clk='0';
		assert(Q= "010")     report "Falha em teste: 4" severity error;

    -- Teste: 5
	  q(2) <= '0'; q(1) <= '0'; q(0) <= '1'; 
    wait until clk'event and clk='0';
		assert(Q= "001")     report "Falha em teste: 5" severity error;

    -- Teste: 6
	  q(2) <= '0'; q(1) <= '0'; q(0) <= '0'; 
    wait until clk'event and clk='0';
		assert(Q= "000")     report "Falha em teste: 6" severity error;

    -- Teste: 7
    q(2) <= '1'; q(1) <= '1'; q(0) <= '1';
    wait until clk'event and clk='0';
		assert(Q = "111")  report "Falha em teste 7" severity error;


    -- finish
    wait until clk'event and clk='0';
    test_runner_cleanup(runner); -- Simulation ends here

	wait;
  end process;
end architecture;
