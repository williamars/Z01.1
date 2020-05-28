-- Elementos de Sistemas
-- developed by Luciano Soares 
-- file: ControlUnit.vhd  
-- date: 4/4/2017   
-- Modificação:
--   - Rafael Corsi : nova versão: adicionado reg S
--  
-- Unidade que controla os componentes da CPU
-- CODE PRA TESTAR --> ./testeHW.py lib.tb_controlunit.all

 

library ieee;
use ieee.std_logic_1164.all;

 

entity ControlUnit is
    port(
        instruction                 : in STD_LOGIC_VECTOR(17 downto 0);  -- instrução para executar
        zr,ng                       : in STD_LOGIC;                      -- valores zr(se zero) e
                                                                     -- ng (se negativo) da ALU
        muxALUI_A                   : out STD_LOGIC;                     -- mux que seleciona entre
                                                                     -- instrução  e ALU para reg. A
        muxAM                       : out STD_LOGIC;                     -- mux que seleciona entre 
        muxSD                       : out STD_LOGIC;  
                                                                     -- reg. A e Mem. RAM para ALU
                                                                     -- A  e Mem. RAM para ALU 
        zx, nx, zy, ny, f, no       : out STD_LOGIC;                     -- sinais de controle da ALU
        loadA, loadD, loadM, loadPC, loadS : out STD_LOGIC                      -- sinais de load do reg. A,
                                                                     -- reg. D, Mem. RAM e Program Counter
    );
end entity;
 

architecture arch of ControlUnit is
 
begin

  loadS <= instruction(16) and instruction(17) and instruction(6);
  muxSD <= instruction(16); 
  loadD <= instruction(17) and instruction(4);
  loadM <= instruction(17) and instruction(5);
  loadA <= not(instruction(17)) or (instruction(17) and instruction(3));                                                                                                                                                                                                                                                                                                                -- jne                                                                                                                            -- jle
  loadPC <= ((instruction(0) and ((not ng) and (not zr))) or
              (instruction(1) and zr) or
              (instruction(2) and ng)) and instruction(17);                                                                                                
  muxALUI_A <= not(instruction(17));
  muxAM <= instruction(17) and instruction(13); 
  zx <= instruction(12) and (instruction(17) or (instruction(16) and instruction(17))) ;
  nx <= instruction(11) and (instruction(17) or (instruction(16) and instruction(17)));
  zy <= instruction(10) and (instruction(17) or (instruction(16) and instruction(17)));
  ny <= instruction(9) and (instruction(17) or (instruction(16) and instruction(17)));
  f  <= instruction(8) and (instruction(17) or (instruction(16) and instruction(17)));
  no <= instruction(7) and (instruction(17) or (instruction(16) and instruction(17)));
  
end architecture;
