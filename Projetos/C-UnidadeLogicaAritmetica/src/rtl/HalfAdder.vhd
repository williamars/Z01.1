-- Elementos de Sistemas
-- by Luciano Soares
-- HalfAdder.vhd

-- Implementa Half Adder

Library ieee;
use ieee.std_logic_1164.all;

entity HalfAdder is
	port(
		a,b:         in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end entity;

architecture rtl of HalfAdder is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  -- Implementação vem aqui!

	soma <= '0' when a='0' and b='0' else
		'1' when a='0' and b='1' else          
		'1' when a='1' and b='0' else
		'0';

	vaium <= '0' when a='0' and b='0' else
		 '0' when a='0' and b='1' else          
		 '0' when a='1' and b='0' else
		 '1';

end architecture;
