; Arquivo: stringLength.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi 
; Data: 28/03/2018
;
; Assuma que uma string é um conjunto de caracteres terminado
; em NULL (0).
; 
; Supondo que temos uma string que começa no endereço 8 da RAM.
; Calcule o seu tamanho e salve o resultado na RAM[0].
;
; Os caracteres estão formatados em ASCII
; http://sticksandstones.kstrom.com/appen.html
; 
; Exemplo:
;
;   Convertido para ASCII
;             |
;             v
;
;  RAM[8]  = `o`    01101111
;  RAM[9]  = `i`    01101000
;  RAM[10] = ` `    00100000
;  RAM[11] = `b`    01100010
;  RAM[12] = 'l'    01101100
;  RAM[13] = `z`    01111010
;  RAM[14] = `?`    00111111
;  RAM[15] = NULL = 0x0000
;
;contador = 0  Ram 0 = contador
;x = 8         Ram 1 = 8
;while ram x != NULL:
;	contador += 1
;	x += 1
;ram0 = contador

;1000

leaw $8, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)    ;RAM[1]= 8
leaw $8, %A
movw (%A), %D
leaw $IF, %A
jne %D 
nop
leaw $END, %A
jmp
nop

IF:
leaw $0, %A 
movw (%A), %D
incw %D           ;RAM[0]+=1
movw %D, (%A)
leaw $1, %A
movw (%A), %D
incw %D          ;RAM[1]+=1
movw %D, (%A)
movw (%A), %D
movw %D, %A
movw (%A), %D
leaw $IF, %A
jne %D
nop
leaw $0, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $END, %A
jmp
nop


END: 



