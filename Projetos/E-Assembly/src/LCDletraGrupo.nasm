; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!

leaw $18794, %A
movw $-1, (%A)
movw %A, %D
leaw $1,%A
movw %D, (%A)

leaw $60, %A
movw %A, %D
leaw $0,%A
movw %D, (%A)

LOOP:

leaw $20, %A
movw %A, %D
leaw $1, %A
addw (%A), %D, %D
movw %D, (%A)
movw %D, %A
movw $-1, (%A)

leaw %0, %A
movw (%A), %D
decw %D
movw %D, (%A)

leaw $LOOP, %A
jg %D
nop

