; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017 

; Calcula o fatorial do número em R0 e armazena o valor em R1.

leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)     ; RAM[3]= RAM[0] = RAM[4]
leaw $4, %A
movw %D, (%A)     ; RAM[3]= RAM[0] = RAM[4]
decw %D
decw %D
leaw $3, %A
movw %D, (%A)     ; RAM[3] = RAM[4] - 2
leaw $5, %A
movw %D, (%A)     ; RAM[5] = RAM[4] - 2 (Vai precisar guardar valor de RAM[3]
leaw $LOOP2, %A   ; em algum lugar, pois RAM[3] vai virar zero no LOOP2).
jge %D
nop

leaw $END, %A
jmp
nop

LOOP:
leaw $5, %A
movw (%A), %D      ; RAM[5], guarda o valor inicial de RAM[3]
decw %D
movw %D,(%A)       ; RAM[5] - 1
leaw $3, %A
movw %D, (%A)      ; Copia RAM[5] para RAM[3]
leaw $0, %A
movw (%A), %D     
leaw $4, %A
movw %D, (%A)      ; Copia RAM[0] para RAM[4]
leaw $5, %A
movw (%A), %D 
leaw $LOOP2, %A    ; Joga RAM[5] para D, para ver se é maior que zero! 
jg %D
nop

leaw $END, %A      ; Se RAM[5] não for maior que zero, vai pro END!
jmp
nop



LOOP2:
leaw $0, %A  
movw (%A), %D
leaw $4, %A
movw (%A), %A          
addw %A, %D, %A    ; A = RAM[4] + RAM[0]
movw %A, %D
leaw $0, %A
movw %D, (%A)      ; RAM[0] = Resultado
leaw $3, %A
movw (%A), %D
decw %D            
movw %D, (%A)      ; RAM[3] - 1
leaw $LOOP2, %A
jg %D
nop


leaw $LOOP, %A
jmp
nop


END:

leaw $0 , %A
movw (%A), %D
leaw $ZERO, %A
je %D            ; Se não for zero, pula o caso de ZERO e acaba. 
nop
leaw %1, %A
movw %D, (%A)
leaw $END2, %A
jmp
nop

ZERO:            ; Caso especial de fatorial de 0
incw %D
leaw $1, %A
movw %D, (%A)

END2:


