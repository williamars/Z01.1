; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova
; 21184   -----  LEDs
; 21185   -----  Chave

;leaw $21185, %A   ; endereço da chave
;movw (%A), %D     ; copia valor das chaves para %D
;leaw $21184, %A   ; endereço do LED
;movw %D, (%A)     ; move valor das chaves para %D


;leaw $21184, %A   ; endereço do LED
;movw $1, (%A)     ; move valor 1 para ele

;simulador
;leaw $496 , %A
;movw %A, %D
;leaw $21184, %A
;movw %D, (%A)

;leaw $14, %A
;movw %A, %D
;notw %D
;leaw $21185, %A
;movw %D, (%A) 
;movw (%A), %D
;leaw $21184, %A
;movw %D, (%A)


leaw $496 , %A
movw %A, %D
leaw $21184, %A
movw %D, (%A)

leaw %14, %A
movw %A, %D
notw %D
leaw $21185, %A
movw  %D, (%A)

leaw $21184, %A
andw (%A), %D, %D
movw %D, (%A)



