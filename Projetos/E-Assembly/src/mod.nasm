; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Calcula o resto da divisão (modulus) entre RAM[1] por RAM[2]
; e armazena o resultado na RAM[0].
;
; 4  % 3 = 1
; 10 % 7 = 3

LOOP:
leaw $1, %A
movw (%A), %D
leaw $0, %A                       
movw (%A), %A
subw %A, %D, %A    ;A - D = A OU SEJA RAM[1]-RAM[2]        
movw %A, %D


leaw $IF, %A
jg %D
nop
leaw $END, %A
jmp 
nop
  

IF:
leaw $2, %A
movw %D, (%A)     ;RAM[2]=RESTO
leaw $0, $A
movw %D, (%A) 
leaw $LOOP, %A
jmp
nop
END: 




