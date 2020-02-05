# Álgebra Booleana


## 1. Qual simplificação está incorreta:

1. $\bar{(\bar{x}+\bar{y})} = \bar{\bar{x}}*\bar{y} = x * \bar{y}$ 
2. $x ( \bar{x} + y ) = x * \bar{x} + x . y = 0 + x . y = x . y$
3. $x . y + x ( y + z ) = x * y + x * y + z = x * y + z$
4. $\bar{x} . \bar{y} . z + \bar{x} . y . z + x . \bar{y} = \bar{x} . z (\bar{y} + y) + x . \bar{y} = \bar{x} . z + x . \bar{y}$

## 2. Qual forma canônica está correta?

 | **A** | **B** | **Q** |
 |-------|-------|-------|
 |     0 |     0 |     1 |
 |     0 |     1 |     0 |
 |     1 |     0 |     0 |
 |     1 |     1 |     1 |

1. $Q = A \bar{B} + A \bar{B}$
1. $Q = A+B * \bar{A} \bar{B}$
1. $Q = A . B$
1. $Q = \bar{A} . \bar{B} + A . B$

## 3. Dado a seguinte tabela verdade (entradas A, B e C, e a saída Q):

 | **A** | **B** | **C** | **Q** |
 |-------|-------|-------|-------|
 |     0 |     0 |     0 |     1 |
 |     0 |     0 |     1 |     0 |
 |     0 |     1 |     0 |     0 |
 |     0 |     1 |     1 |     1 |
 |     1 |     0 |     0 |     1 |
 |     1 |     0 |     1 |     0 |
 |     1 |     1 |     0 |     0 |
 |     1 |     1 |     1 |     1 |

1. Crie uma fórmula em álgebra booleana que represente a tabela.
1. Desenhe um circuito usando os ícones da álgebra booleana. 

## 4. Qual é a expressão em álgebra booleana do seguinte circuito:

![](figs/Exercicios/Algebra-Booleana-1.png)

## 5. Converta a seguinte expressão em Soma de Produtos para Produto de Somas:

$A . B . C + A \bar{B} \bar{C} + A . \bar{B} C + A . B . \bar{C} + \bar{A} . \bar{B} . C$

## 6. Determine os valores de A, B, C e D que fazem a fórmula $\bar{A} + B + \bar{C} + D ser igual a zero.

## 7. Aplicando o teorema de DeMorgan na expressão $\overline{ABC}$, se tem:

1. $\bar{A}+\bar{B}+\bar{C}$
1. $\overline{A+B+C}$
1. $A + \bar{B} + C \bar{C}$
1. $A . (B+C)$

## 8. Qual das seguintes propriedades da álgebra booleana é falsa:

1. $A . (\bar{A} + B)= A . B$
1. $A + (A . B) = A$
1. $A + \bar{A} = 1$
1. $A . A = A$


## 9. Simplifique a seguinte expressão:

$\bar{A} \bar{B} \bar{C} + \bar{A} B C + \bar{A} B \bar{C} + A \bar{B} \bar{C} + A B \bar{C}$

## 10. Quantas saídas com 1 existem na tabela verdade que resulta na seguinte fórmula de soma de produtos:

$A \bar{B} \bar{C} + \bar{A} B C + \bar{A} B \bar{C} + A \bar{B} \bar{C} + A B C$

## 11. Aplicando a lei da Distributividade na expressão $A(A+\bar{C}+D)$  se tem:

1. $A . B + A . C + A . D$
1. $A . B . C . D$
1. $A + B + C + D$
1. $AB + A\bar{C} + AD$


## 12. Qual das seguintes opções é uma característica importante da forma canônica de soma de produtos?

1. Os circuitos lógicos são reduzidos a nada mais do que simples portas AND e OR.
1. Os tempos de atraso são muito reduzidas em relação a outras formas.
1. Nenhum sinal deve passar por mais de dois portas lógicas, não incluindo inversores.
1. O número máximo de portas que qualquer sinal deve passar é reduzido por um factor de dois.

## 13. Crie o mapa de Karnaugh conforme a seguinte tabela verdade de três entradas.

 | **A** | **B** | **C** | **OUT** |
 |-------|-------|-------|---------|
 |     0 |     0 |     0 |       1 |
 |     0 |     0 |     1 |       1 |
 |     0 |     1 |     0 |       0 |
 |     0 |     1 |     1 |       1 |
 |     1 |     0 |     0 |       0 |
 |     1 |     0 |     1 |       1 |
 |     1 |     1 |     0 |       0 |
 |     1 |     1 |     1 |       0 |


## 14. Explique o princípio de funcionamento do produto de somas.

## 15. Qual mapa de Karnaugh representa a seguinte fórmula:

$ABC\bar{D} + \bar{A}\bar{B}CD + A \bar{B}\bar{C}D + \bar{A} + \bar{B} + \bar{C} + \bar{D}$       

![.](figs/questao15.png){width=40%}.

## 16. Qual é a seguinte expressão booleana para o seguinte mapa de Karnaugh.

![.](figs/questao16.png).

## 17. Crie o mapa de Karnaugh da tabela verdade de quatro entradas.

 | **A** | **B** | **C** | **D** | **OUT** |
 |-------|-------|-------|-------|---------|
 |     0 |     0 |     0 |     0 |       0 |
 |     0 |     0 |     0 |     1 |       1 |
 |     0 |     0 |     1 |     0 |       0 |
 |     0 |     0 |     1 |     1 |       0 |
 |     0 |     1 |     0 |     0 |       0 |
 |     0 |     1 |     0 |     1 |       1 |
 |     0 |     1 |     1 |     0 |       0 |
 |     0 |     1 |     1 |     1 |       0 |
 |     1 |     0 |     0 |     0 |       0 |
 |     1 |     0 |     0 |     1 |       1 |
 |     1 |     0 |     1 |     0 |       1 |
 |     1 |     0 |     1 |     1 |       1 |
 |     1 |     1 |     0 |     0 |       0 |
 |     1 |     1 |     0 |     1 |       1 |
 |     1 |     1 |     1 |     0 |       0 |
 |     1 |     1 |     1 |     1 |       1 |

## 18. A seguinte expressão foi resultado da forma canônica do produto de somas de uma tabela verdade para a produção de um circuito lógico. O objetivo é simplificar a álgebra booleana dessa lógica para o menor número possível de portas, porém visivelmente quem fez essa fórmula não percebeu que se tivesse feito a soma de produtos já partiria com um número menor de termos. Converta essa fórmula para a soma de produtos e minimize ela.

```
               _       _       _         _ _
(A+B+C) * (A+B+C) * (A+B+C) * (A+B+C) * (A+B+C)
```

## 19. Quantas saídas Q na tabela verdade são verdadeiras (1), da seguinte expressão booleana que é um produto de somas:

```
             _     _   _  
Q=(A+B+C)*(A+B+C)*(A+B+C)
```

 A) 1
 B) 3   
 C) 4   
 D) 5  
    
