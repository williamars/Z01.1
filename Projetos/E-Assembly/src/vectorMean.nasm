; ------------------------------------
; Calcule a média dos valores de um vetor
; que possui inicio em RAM[5] e tamanho
; defindo em RAM[4],
;
; 1. Salve a soma em RAM[1]
; 2. Salve a média em RAM[0]
; 
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  2  : média 
; RAM[1]:     | RAM[1]:  8  : soma
; RAM[2]:     | RAM[2]:  
; RAM[3]:     | RAM[3]:  
; RAM[4]:  4  | RAM[4]:  4 
; RAM[5]:  1  | RAM[5]:  1 - 
; RAM[6]:  2  | RAM[6]:  2 | vetor
; RAM[7]:  1  | RAM[7]:  1 |
; RAM[8]:  4  | RAM[8]:  4 -
; ------------------------------------


leaw $5, %A
movw %A, %D
leaw $2, %A
movw %D, (%A)
leaw $4, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)


LOOP:
leaw $2, %A
movw (%A), %D
movw %D, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
movw %D, (%A)
leaw $2, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $4, %A
movw (%A), %D
decw %D
movw %D, (%A)
leaw $LOOP, %A
jg %D
nop

; Divide R0 por R1 e armazena o resultado em R2.
; divide R1 por R3 e armazena em R0
leaw $1, %A
movw (%A), %D
leaw $var1, %A
movw %D, (%A)


LOOP2:
leaw $3, %A
movw (%A), %D
leaw $var1, %A                       
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
leaw $var1, %A
movw %D, (%A)     ;RAM[2]=RESTO
leaw $0, %A     
movw (%A), %D  
addw $1, %D, (%A)   ;RAM[0]+=1
leaw $LOOP2, %A
jmp
nop
END: 
