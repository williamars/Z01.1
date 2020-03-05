library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux2Way is
	port ( 
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC;
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC);
end entity;

architecture rtl of DMux2Way is
begin

	-- Peguei a tabela verdade e fiz as condições das saídas 
	q0 <='1' when (a = '1' AND sel ='0') else
		'0';
		 
	q1 <= '1' when (a = '1' AND sel='1') else
		'0'; 

end architecture;
