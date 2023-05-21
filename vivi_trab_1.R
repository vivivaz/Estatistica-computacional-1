################## Estatastica compuacional 1 - trabalho 1

#### Questao 1
##a
x = c(27,21,32,36,25)

##b
y = (x * exp(1)**-2)/((((4**10)-3)/sqrt(3))*27)

##c
a = 2 > 1
b = 4== 5
c = 9<= 8
d = "liso"== "silo"
e = "liso" != "silo"

w = c(a, b, c, d, e)

##d
estado_civil = factor(c("solteiro", "casado", "casado", "solteiro", "viuvo", "divorciado", "casado", "divorciado", "divorciado", "viuvo"))

estado_civil_Z = c("solteiro", "casado", "casado", "solteiro", "viuvo", "divorciado", "casado", "divorciado", "divorciado", "viuvo")

z = c(estado_civil_Z[1], estado_civil_Z[2], estado_civil_Z[4], estado_civil_Z[5], estado_civil_Z[9])

z2 = c(estado_civil[1], estado_civil[2], estado_civil[4], estado_civil[5], estado_civil[9])

##e
df = data.frame(x,y,w,z)

##f

df[5,]

##g

df[3,2]

#### Questao 2
Matriz_A = matrix(1:20, nrow = 5 , ncol= 4, byrow = T)
 
##a 
colnames(Matriz_A) = c("A", "B", "C", "D")
 
##b
rownames(Matriz_A) = c("primeira", "segunda", "terceira", "quarta", "quinta")

##c
Matriz_B = Matriz_A * 2

##d
Matriz_C = Matriz_A[3:4,1:2]

#### Questao 3
lista = list(df, Matriz_A, Matriz_C)

##a
class(lista[3])
# objeto do tipo "list"

##b
names(lista) = c("Data_frame", "MatrizA", "MatrizB")

##c
lista$vetor = c(1:5)


