#Conhecendo estruturas de dados no R
# data.frame, list, matrix, array

####################### lab2
####Questao 1

##a
? data.frame
##b 
? list
##c
? matrix
##d
? array

####Questao 2

nivel = factor(c("Alto", "Baixo", "Baixo", "Médio", "Alto", "Médio", "Médio", "Baixo", "Baixo", "Médio"), levels = c("Baixo", "Médio","Alto"), order = T)
##a
nivel2 = nivel[1:5]

##b
nivel3 = nivel[c(3,5,9)]

##c
nivel4 = c(nivel2, nivel3)

####Questao 3

Matriz_A = matrix(c(1,2,3,4, 5,6,7,8, 9,10,11,12, 13,14,15,16), nrow = 4, ncol = 4, byrow = T)

##a
colnames(Matriz_A) = c("Primeira", "Segunda", "Terceira", "Quarta")

##b
rownames(Matriz_A) = c("A", "B", "C", "D")

##c
Matriz_B = Matriz_A + 2

##d
Matriz_B[2,3]

##e
Matriz_B[3:4,1:2]

##f
Matriz_B[,3:4]

##g
Matriz_B[c(1,3),]

##h
Matriz_A + Matriz_B

####Questao 4
##a
ID = factor(c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j"))
sexo = factor(c("F", "M", "F", "F", "F", "M", "F", "F", "M", "M"))
idade = c(29,NA,30,41,19,22,NA,31,40,39)
escolaridade = factor(c("superior completo", "medio completo", "superior completo", "pos-graduacao", NA, "medio completo", "pos-graduacao", "superior completo", "superior completo","pos-graduacao"), 
                      levels = c("medio completo", "superior completo", "pos-graduacao"), 
                      ordered =  T)

df2 =data.frame(ID, sexo, idade, escolaridade)

##b
mean(idade, na.rm=T)

##c
table(escolaridade)

##d
table(sexo)
class(table(sexo))

##e
df2[c(1,6,8), c(1,2,4)]

##f
estado_civil = factor(c("solteiro", "solteiro", "casado", "divorciado", "solteiro", "casado", "viuvo", "casado", "solteiro", "divorciado"))
df2$estado_civil = estado_civil

##g
head(df2)
str(df2)

##h
attributes(df2)

####Questao 5

lista = list(nivel4, Matriz_A, df2)

##a
lista[3]
class(lista[3])
#objeto do tipo "list"
lista[[3]]
class(lista[[3]])
#objeto do tipo data.frame

##b
names(lista) = c("Vetor", "Matriz", "Data frame")

##c
lista$vetor2 = c(1:5)

####Questao 6
##a
Aarray = array(1:24, dim= c(3,4,2))

##b
Aarray[,3,]

##c
Aarray[2,,1]

##d
Aarray[,,2]



