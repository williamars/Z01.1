; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
; divisao para numeros inteiros positivos


LOOP:
leaw $1, %A
movw (%A), %D
leaw $0, %A                       
movw (%A), %A
subw %A, %D, %A    ;A - D = A OU SEJA RAM[0]-RAM[1]        
movw %A, %D


leaw $IF, %A
jge %D
nop
leaw $END, %A
jmp
nop
  

IF:
leaw $0, %A
movw %D, (%A)     ;RAM[2]=RESTO
leaw $2, %A     
movw (%A), %D  
addw $1,%D,(%A)   ;RAM[0]+=1
leaw $LOOP, %A
jmp
nop
END: 


















































































