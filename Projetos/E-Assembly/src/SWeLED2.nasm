; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!



leaw $0, %A
movw %A, (%A)

leaw $52 , %A
movw %A, %D
leaw $0, %A
movw %D, (%A)


leaw $21185, %A
movw (%A), %D
notw %D
leaw $128, %A
andw %A, %D, %D

leaw $0, %A
movw (%A), %A
orw %A, %D, %D
leaw $0, %A
movw %D, (%A)

leaw $21185, %A
movw (%A), %D
leaw $256, %A
andw %A, %D, %D

leaw $0, %A
movw (%A), %A
orw %A, %D, %D
leaw $0, %A
movw %D, (%A)


movw $1, %D
leaw %21185, %A
andw (%A), %D, %D
leaw $LOOP, %A
je %D
nop

incw %D
leaw $0, %A
orw (%A), %D, %D
movw %D, (%A)
leaw $21184, %A
movw %D, (%A)

LOOP:

leaw $8, %A
movw %A, %D
leaw $5, %A
andw (%A), %D, %D
leaw $0, %A
movw (%A), %A
orw %A, %D, %D

leaw $21184, %A
movw %D, (%A)

