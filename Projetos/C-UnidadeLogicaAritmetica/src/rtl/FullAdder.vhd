-- Elementos de Sistemas
-- by Luciano Soares
-- FullAdder.vhd

-- Implementa Full Adder

Library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
	port(
		a,b,c:      in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end entity;

architecture rtl of FullAdder is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
component FullAdder1
    port
    (
        -- Input ports
        a   : in  std_logic;
        b   : in  std_logic;
        c: in std_logic;

        -- Output ports
        soma   : out std_logic;
        vaium: out std_logic
    );
end component;

begin
  -- Implementação vem aqui!
	soma <= '0' when a='0' and b='0' and c='0' else
		'1' when a='0' and b='0' and c='1' else          
		'1' when a='0' and b='1' and c='0' else
		'0' when a='0' and b='1' and c='1' else
		'1' when a='1' and b='0' and c='0' else
 		'0' when a='1' and b='0' and c='1' else
		'0' when a='1' and b='1' and c='0' else
		'1';

	vaium <= '0' when a='0' and b='0' and c='0' else
		 '0' when a='0' and b='0' and c='1' else          
		 '0' when a='0' and b='1' and c='0' else
		 '1' when a='0' and b='1' and c='1' else
		 '0' when a='1' and b='0' and c='0' else
 		 '1' when a='1' and b='0' and c='1' else
		 '1' when a='1' and b='1' and c='0' else
		 '1';

end architecture;
