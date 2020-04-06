-- Elementos de Sistemas
-- by Luciano Soares
-- FlipFlopJK.vhd

 

library ieee;
use ieee.std_logic_1164.all;


entity FlipFlopJK is
    port(
        clock: in std_logic;
        J:     in std_logic;
        K:     in std_logic;
        q:     out std_logic := '0';
        notq:  out std_logic := '1'
    );
end entity;

 
architecture arch of FlipFlopJK is
 
begin 

    process(clock) begin
        if rising_edge(clock) then                 
            if (J = '1') then
                q <='1';
            elsif (K ='1') then 
                q <= '0';
            elsif (J='1' and K='1') then
                q <= notq;
            elsif(J='0' and K='0') then
                q <=q;
        end if;
    end if;
  end process;


 

end architecture;