; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD 


leaw $16384, %A
movw $-1, (%A)
leaw $16385, %A
movw $-1, (%A)
leaw $16386, %A
movw $-1, (%A)
leaw $16387, %A
movw $-1, (%A)
leaw $16388, %A
movw $-1, (%A)
leaw $16389, %A
movw $-1, (%A)
leaw $16390, %A
movw $-1, (%A)
leaw $16391, %A
movw $-1, (%A)
leaw $16392, %A
movw $-1, (%A)
leaw $16393, %A
movw $-1, (%A)
leaw $16404, %A
movw $-1, (%A)
leaw $16413, %A
movw $-1, (%A)
leaw $16424, %A
movw $-1, (%A)
leaw $16433, %A
movw $-1, (%A)
leaw $16444, %A
movw $-1, (%A)
leaw $16453, %A
movw $-1, (%A)
leaw $16464, %A
movw $-1, (%A)
leaw $16473, %A
movw $-1, (%A)
leaw $16484, %A
movw $-1, (%A)
leaw $16493, %A
movw $-1, (%A)
leaw $16504, %A
movw $-1, (%A)
leaw $16513, %A
movw $-1, (%A)
leaw $16524, %A
movw $-1, (%A)
leaw $16533, %A
movw $-1, (%A)
leaw $16544, %A
movw $-1, (%A)
leaw $16553, %A
movw $-1, (%A)
leaw $16564, %A
movw $-1, (%A)
leaw $16573, %A
movw $-1, (%A)
leaw $16584, %A
movw $-1, (%A)
leaw $16593, %A
movw $-1, (%A)
leaw $16604, %A
movw $-1, (%A)
leaw $16613, %A
movw $-1, (%A)
leaw $16624, %A
movw $-1, (%A)
leaw $16633, %A
movw $-1, (%A)
leaw $16644, %A
movw $-1, (%A)
leaw $16653, %A
movw $-1, (%A)
leaw $16664, %A
movw $-1, (%A)
leaw $16673, %A
movw $-1, (%A)
leaw $16684, %A
movw $-1, (%A)
leaw $16693, %A
movw $-1, (%A)
leaw $16704, %A
movw $-1, (%A)
leaw $16713, %A
movw $-1, (%A)
leaw $16724, %A
movw $-1, (%A)
leaw $16733, %A
movw $-1, (%A)
leaw $16744, %A
movw $-1, (%A)
leaw $16753, %A
movw $-1, (%A)
leaw $16764, %A
movw $-1, (%A)
leaw $16773, %A
movw $-1, (%A)
leaw $16784, %A
movw $-1, (%A)
leaw $16793, %A
movw $-1, (%A)
leaw $16804, %A
movw $-1, (%A)
leaw $16813, %A
movw $-1, (%A)
leaw $16824, %A
movw $-1, (%A)
leaw $16833, %A
movw $-1, (%A)
leaw $16844, %A
movw $-1, (%A)
leaw $16853, %A
movw $-1, (%A)
leaw $16864, %A
movw $-1, (%A)
leaw $16873, %A
movw $-1, (%A)
leaw $16884, %A
movw $-1, (%A)
leaw $16893, %A
movw $-1, (%A)
leaw $16904, %A
movw $-1, (%A)
leaw $16913, %A
movw $-1, (%A)
leaw $16924, %A
movw $-1, (%A)
leaw $16933, %A
movw $-1, (%A)
leaw $16944, %A
movw $-1, (%A)
leaw $16953, %A
movw $-1, (%A)
leaw $16964, %A
movw $-1, (%A)
leaw $16973, %A
movw $-1, (%A)
leaw $16984, %A
movw $-1, (%A)
leaw $16993, %A
movw $-1, (%A)
leaw $17004, %A
movw $-1, (%A)
leaw $17013, %A
movw $-1, (%A)
leaw $17024, %A
movw $-1, (%A)
leaw $17033, %A
movw $-1, (%A)
leaw $17044, %A
movw $-1, (%A)
leaw $17053, %A
movw $-1, (%A)
leaw $17064, %A
movw $-1, (%A)
leaw $17073, %A
movw $-1, (%A)
leaw $17084, %A
movw $-1, (%A)
leaw $17093, %A
movw $-1, (%A)
leaw $17104, %A
movw $-1, (%A)
leaw $17113, %A
movw $-1, (%A)
leaw $17124, %A
movw $-1, (%A)
leaw $17133, %A
movw $-1, (%A)
leaw $17144, %A
movw $-1, (%A)
leaw $17153, %A
movw $-1, (%A)
leaw $17164, %A
movw $-1, (%A)
leaw $17173, %A
movw $-1, (%A)
leaw $17184, %A
movw $-1, (%A)
leaw $17193, %A
movw $-1, (%A)
leaw $17204, %A
movw $-1, (%A)
leaw $17213, %A
movw $-1, (%A)
leaw $17224, %A
movw $-1, (%A)
leaw $17233, %A
movw $-1, (%A)
leaw $17244, %A
movw $-1, (%A)
leaw $17253, %A
movw $-1, (%A)
leaw $17264, %A
movw $-1, (%A)
leaw $17273, %A
movw $-1, (%A)
leaw $17284, %A
movw $-1, (%A)
leaw $17293, %A
movw $-1, (%A)
leaw $17304, %A
movw $-1, (%A)
leaw $17313, %A
movw $-1, (%A)
leaw $17324, %A
movw $-1, (%A)
leaw $17333, %A
movw $-1, (%A)
leaw $17344, %A
movw $-1, (%A)
leaw $17353, %A
movw $-1, (%A)
leaw $17364, %A
movw $-1, (%A)
leaw $17373, %A
movw $-1, (%A)
leaw $17384, %A
movw $-1, (%A)
leaw $17393, %A
movw $-1, (%A)
leaw $17404, %A
movw $-1, (%A)
leaw $17413, %A
movw $-1, (%A)
leaw $17424, %A
movw $-1, (%A)
leaw $17433, %A
movw $-1, (%A)
leaw $17444, %A
movw $-1, (%A)
leaw $17453, %A
movw $-1, (%A)
leaw $17464, %A
movw $-1, (%A)
leaw $17473, %A
movw $-1, (%A)
leaw $17484, %A
movw $-1, (%A)
leaw $17493, %A
movw $-1, (%A)
leaw $17504, %A
movw $-1, (%A)
leaw $17513, %A
movw $-1, (%A)
leaw $17524, %A
movw $-1, (%A)
leaw $17533, %A
movw $-1, (%A)
leaw $17544, %A
movw $-1, (%A)
leaw $17553, %A
movw $-1, (%A)
leaw $17564, %A
movw $-1, (%A)
leaw $17573, %A
movw $-1, (%A)
leaw $17584, %A
movw $-1, (%A)
leaw $17593, %A
movw $-1, (%A)
leaw $17604, %A
movw $-1, (%A)
leaw $17613, %A
movw $-1, (%A)
leaw $17624, %A
movw $-1, (%A)
leaw $17633, %A
movw $-1, (%A)
leaw $17644, %A
movw $-1, (%A)
leaw $17653, %A
movw $-1, (%A)
leaw $17664, %A
movw $-1, (%A)
leaw $17673, %A
movw $-1, (%A)
leaw $17684, %A
movw $-1, (%A)
leaw $17693, %A
movw $-1, (%A)
leaw $17704, %A
movw $-1, (%A)
leaw $17713, %A
movw $-1, (%A)
leaw $17724, %A
movw $-1, (%A)
leaw $17733, %A
movw $-1, (%A)
leaw $17744, %A
movw $-1, (%A)
leaw $17753, %A
movw $-1, (%A)
leaw $17764, %A
movw $-1, (%A)
leaw $17773, %A
movw $-1, (%A)
leaw $17784, %A
movw $-1, (%A)
leaw $17793, %A
movw $-1, (%A)
leaw $17804, %A
movw $-1, (%A)
leaw $17813, %A
movw $-1, (%A)
leaw $17824, %A
movw $-1, (%A)
leaw $17833, %A
movw $-1, (%A)
leaw $17844, %A
movw $-1, (%A)
leaw $17853, %A
movw $-1, (%A)
leaw $17864, %A
movw $-1, (%A)
leaw $17873, %A
movw $-1, (%A)
leaw $17884, %A
movw $-1, (%A)
leaw $17893, %A
movw $-1, (%A)
leaw $17904, %A
movw $-1, (%A)
leaw $17913, %A
movw $-1, (%A)
leaw $17924, %A
movw $-1, (%A)
leaw $17933, %A
movw $-1, (%A)
leaw $17944, %A
movw $-1, (%A)
leaw $17953, %A
movw $-1, (%A)
leaw $17964, %A
movw $-1, (%A)
leaw $17973, %A
movw $-1, (%A)
leaw $17984, %A
movw $-1, (%A)
leaw $17993, %A
movw $-1, (%A)
leaw $18004, %A
movw $-1, (%A)
leaw $18013, %A
movw $-1, (%A)
leaw $18024, %A
movw $-1, (%A)
leaw $18033, %A
movw $-1, (%A)
leaw $18044, %A
movw $-1, (%A)
leaw $18053, %A
movw $-1, (%A)
leaw $18064, %A
movw $-1, (%A)
leaw $18073, %A
movw $-1, (%A)
leaw $18084, %A
movw $-1, (%A)
leaw $18093, %A
movw $-1, (%A)
leaw $18104, %A
movw $-1, (%A)
leaw $18113, %A
movw $-1, (%A)
leaw $18124, %A
movw $-1, (%A)
leaw $18133, %A
movw $-1, (%A)
leaw $18144, %A
movw $-1, (%A)
leaw $18153, %A
movw $-1, (%A)
leaw $18164, %A
movw $-1, (%A)
leaw $18173, %A
movw $-1, (%A)
leaw $18184, %A
movw $-1, (%A)
leaw $18193, %A
movw $-1, (%A)
leaw $18204, %A
movw $-1, (%A)
leaw $18213, %A
movw $-1, (%A)
leaw $18224, %A
movw $-1, (%A)
leaw $18233, %A
movw $-1, (%A)
leaw $18244, %A
movw $-1, (%A)
leaw $18253, %A
movw $-1, (%A)
leaw $18264, %A
movw $-1, (%A)
leaw $18273, %A
movw $-1, (%A)
leaw $18284, %A
movw $-1, (%A)
leaw $18293, %A
movw $-1, (%A)
leaw $18304, %A
movw $-1, (%A)
leaw $18313, %A
movw $-1, (%A)
leaw $18324, %A
movw $-1, (%A)
leaw $18333, %A
movw $-1, (%A)
leaw $18344, %A
movw $-1, (%A)
leaw $18353, %A
movw $-1, (%A)
leaw $18364, %A
movw $-1, (%A)
leaw $18373, %A
movw $-1, (%A)
leaw $18384, %A
movw $-1, (%A)
leaw $18393, %A
movw $-1, (%A)
leaw $18404, %A
movw $-1, (%A)
leaw $18413, %A
movw $-1, (%A)
leaw $18424, %A
movw $-1, (%A)
leaw $18433, %A
movw $-1, (%A)
leaw $18444, %A
movw $-1, (%A)
leaw $18453, %A
movw $-1, (%A)
leaw $18464, %A
movw $-1, (%A)
leaw $18473, %A
movw $-1, (%A)
leaw $18484, %A
movw $-1, (%A)
leaw $18493, %A
movw $-1, (%A)
leaw $18504, %A
movw $-1, (%A)
leaw $18513, %A
movw $-1, (%A)
leaw $18524, %A
movw $-1, (%A)
leaw $18533, %A
movw $-1, (%A)
leaw $18544, %A
movw $-1, (%A)
leaw $18553, %A
movw $-1, (%A)
leaw $18564, %A
movw $-1, (%A)
leaw $18573, %A
movw $-1, (%A)
leaw $18584, %A
movw $-1, (%A)
leaw $18593, %A
movw $-1, (%A)
leaw $18604, %A
movw $-1, (%A)
leaw $18613, %A
movw $-1, (%A)
leaw $18624, %A
movw $-1, (%A)
leaw $18633, %A
movw $-1, (%A)
leaw $18644, %A
movw $-1, (%A)
leaw $18653, %A
movw $-1, (%A)
leaw $18664, %A
movw $-1, (%A)
leaw $18673, %A
movw $-1, (%A)
leaw $18684, %A
movw $-1, (%A)
leaw $18693, %A
movw $-1, (%A)
leaw $18704, %A
movw $-1, (%A)
leaw $18713, %A
movw $-1, (%A)
leaw $18724, %A
movw $-1, (%A)
leaw $18733, %A
movw $-1, (%A)
leaw $18744, %A
movw $-1, (%A)
leaw $18753, %A
movw $-1, (%A)
leaw $18764, %A
movw $-1, (%A)
leaw $18773, %A
movw $-1, (%A)
leaw $18784, %A
movw $-1, (%A)
leaw $18793, %A
movw $-1, (%A)
leaw $18804, %A
movw $-1, (%A)
leaw $18813, %A
movw $-1, (%A)
leaw $18824, %A
movw $-1, (%A)
leaw $18833, %A
movw $-1, (%A)
leaw $18844, %A
movw $-1, (%A)
leaw $18853, %A
movw $-1, (%A)
leaw $18864, %A
movw $-1, (%A)
leaw $18873, %A
movw $-1, (%A)
leaw $18884, %A
movw $-1, (%A)
leaw $18893, %A
movw $-1, (%A)
leaw $18904, %A
movw $-1, (%A)
leaw $18913, %A
movw $-1, (%A)
leaw $18924, %A
movw $-1, (%A)
leaw $18933, %A
movw $-1, (%A)
leaw $18944, %A
movw $-1, (%A)
leaw $18953, %A
movw $-1, (%A)
leaw $18964, %A
movw $-1, (%A)
leaw $18973, %A
movw $-1, (%A)
leaw $18984, %A
movw $-1, (%A)
leaw $18993, %A
movw $-1, (%A)
leaw $19004, %A
movw $-1, (%A)
leaw $19013, %A
movw $-1, (%A)
leaw $19024, %A
movw $-1, (%A)
leaw $19033, %A
movw $-1, (%A)
leaw $19044, %A
movw $-1, (%A)
leaw $19053, %A
movw $-1, (%A)
leaw $19064, %A
movw $-1, (%A)
leaw $19073, %A
movw $-1, (%A)
leaw $19084, %A
movw $-1, (%A)
leaw $19093, %A
movw $-1, (%A)
leaw $19104, %A
movw $-1, (%A)
leaw $19113, %A
movw $-1, (%A)
leaw $19124, %A
movw $-1, (%A)
leaw $19133, %A
movw $-1, (%A)
leaw $19144, %A
movw $-1, (%A)
leaw $19153, %A
movw $-1, (%A)
leaw $19164, %A
movw $-1, (%A)
leaw $19173, %A
movw $-1, (%A)
leaw $19184, %A
movw $-1, (%A)
leaw $19193, %A
movw $-1, (%A)
leaw $19204, %A
movw $-1, (%A)
leaw $19213, %A
movw $-1, (%A)
leaw $19224, %A
movw $-1, (%A)
leaw $19233, %A
movw $-1, (%A)
leaw $19244, %A
movw $-1, (%A)
leaw $19253, %A
movw $-1, (%A)
leaw $19264, %A
movw $-1, (%A)
leaw $19273, %A
movw $-1, (%A)
leaw $19284, %A
movw $-1, (%A)
leaw $19293, %A
movw $-1, (%A)
leaw $19304, %A
movw $-1, (%A)
leaw $19313, %A
movw $-1, (%A)
leaw $19324, %A
movw $-1, (%A)
leaw $19333, %A
movw $-1, (%A)
leaw $19344, %A
movw $-1, (%A)
leaw $19353, %A
movw $-1, (%A)
leaw $19364, %A
movw $-1, (%A)
leaw $19373, %A
movw $-1, (%A)
leaw $19384, %A
movw $-1, (%A)
leaw $19393, %A
movw $-1, (%A)
leaw $19404, %A
movw $-1, (%A)
leaw $19413, %A
movw $-1, (%A)
leaw $19424, %A
movw $-1, (%A)
leaw $19433, %A
movw $-1, (%A)
leaw $19444, %A
movw $-1, (%A)
leaw $19453, %A
movw $-1, (%A)
leaw $19464, %A
movw $-1, (%A)
leaw $19473, %A
movw $-1, (%A)
leaw $19484, %A
movw $-1, (%A)
leaw $19493, %A
movw $-1, (%A)
leaw $19504, %A
movw $-1, (%A)
leaw $19513, %A
movw $-1, (%A)
leaw $19524, %A
movw $-1, (%A)
leaw $19533, %A
movw $-1, (%A)
leaw $19544, %A
movw $-1, (%A)
leaw $19545, %A
movw $-1, (%A)
leaw $19546, %A
movw $-1, (%A)
leaw $19547, %A
movw $-1, (%A)
leaw $19548, %A
movw $-1, (%A)
leaw $19549, %A
movw $-1, (%A)
leaw $19550, %A
movw $-1, (%A)
leaw $19551, %A
movw $-1, (%A)
leaw $19552, %A
movw $-1, (%A)
leaw $19553, %A
movw $-1, (%A)