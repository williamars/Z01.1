--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		bcd : in  STD_LOGIC_VECTOR(3 downto 0);
		leds: out STD_LOGIC_VECTOR(6 downto 0);
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEX2: out std_logic_vector(6 downto 0);
		HEX3: out std_logic_vector(6 downto 0)
		
		
	);
end entity;


----------------------------
-- Implementacao do bloco --
----------------------------
architecture arch of TopLevel is
--------------
-- signals
--------------
signal vec :std_logic_vector (3 downto 0);
signal vec1 :std_logic_vector (3 downto 0);
signal vec2 :std_logic_vector (3 downto 0);
signal vec3 :std_logic_vector (3 downto 0);

---------------
-- implementacao
---------------


begin
	
	u1 : work.binarioToBcd port map(clk   => CLOCK_50,
                                   reset => '0',
                                   binary_in => SW,
                                   bcd0  => vec,
                                   bcd1  => vec1,
                                   bcd2  => vec2,
                                   bcd3  => vec3,
                                   bcd4  => open);       

   --vec<= bcd0
	HEX0 <= "1000000" when (vec = "0000") else -- 0
	"1111001" when (vec = "0001") else -- 1
	"0100100" when (vec= "0010") else -- 2
	"0110000" when (vec= "0011") else -- 3
	"0011001" when (vec = "0100") else -- 4
	"0010010" when (vec = "0101") else -- 5
	"0000010" when (vec = "0110") else -- 6
	"1111000" when (vec = "0111") else -- 7
	"0000000" when (vec = "1000") else -- 8
	"0010000" when (vec = "1001") else -- 9 
	"0100000" when (vec = "1010") else -- a
	"0000011" when (vec = "1011") else -- b
	"1000110" when (vec = "1100") else -- c
	"0100001" when (vec = "1101") else -- d 
	"0000110" when (vec = "1110") else -- E
	"0001110"; -- F
	
	
	HEX1 <= "1000000" when (vec1 = "0000") else -- 0
	"1111001" when (vec1 = "0001") else -- 1
	"0100100" when (vec1= "0010") else -- 2
	"0110000" when (vec1= "0011") else -- 3
	"0011001" when (vec1 = "0100") else -- 4
	"0010010" when (vec1 = "0101") else -- 5
	"0000010" when (vec1 = "0110") else -- 6
	"1111000" when (vec1 = "0111") else -- 7
	"0000000" when (vec1 = "1000") else -- 8
	"0010000" when (vec1 = "1001") else -- 9 
	"0100000" when (vec1 = "1010") else -- a
	"0000011" when (vec1 = "1011") else -- b
	"1000110" when (vec1 = "1100") else -- c
	"0100001" when (vec1 = "1101") else -- d 
	"0000110" when (vec1 = "1110") else -- E
	"0001110"; -- F
	
	HEX2 <= "1000000" when (vec2 = "0000") else -- 0
	"1111001" when (vec2 = "0001") else -- 1
	"0100100" when (vec2= "0010") else -- 2
	"0110000" when (vec2= "0011") else -- 3
	"0011001" when (vec2 = "0100") else -- 4
	"0010010" when (vec2 = "0101") else -- 5
	"0000010" when (vec2 = "0110") else -- 6
	"1111000" when (vec2 = "0111") else -- 7
	"0000000" when (vec2 = "1000") else -- 8
	"0010000" when (vec2 = "1001") else -- 9 
	"0100000" when (vec2 = "1010") else -- a
	"0000011" when (vec2 = "1011") else -- b
	"1000110" when (vec2 = "1100") else -- c
	"0100001" when (vec2 = "1101") else -- d 
	"0000110" when (vec2 = "1110") else -- E
	"0001110"; -- F
	
	HEX3 <= "1000000" when (vec3 = "0000") else -- 0
	"1111001" when (vec3 = "0001") else -- 1
	"0100100" when (vec3= "0010") else -- 2
	"0110000" when (vec3= "0011") else -- 3
	"0011001" when (vec3 = "0100") else -- 4
	"0010010" when (vec3 = "0101") else -- 5
	"0000010" when (vec3 = "0110") else -- 6
	"1111000" when (vec3 = "0111") else -- 7
	"0000000" when (vec3 = "1000") else -- 8
	"0010000" when (vec3 = "1001") else -- 9 
	"0100000" when (vec3 = "1010") else -- a
	"0000011" when (vec3 = "1011") else -- b
	"1000110" when (vec3 = "1100") else -- c
	"0100001" when (vec3 = "1101") else -- d 
	"0000110" when (vec3 = "1110") else -- E
	"0001110"; -- F

			 
end architecture;
