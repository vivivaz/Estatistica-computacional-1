##################### Lab 6

#### Questao 1
y = matrix(c(1,11,3,13,5,15,7,17,9,19), nrow = 5, byrow = T)
#alternativa
y = matrix(seq(1,20,2), ncol=2)

# somar linhas
apply(y, 1, sum)
#alternativa
rowSums(y)

#somar colunas
apply(y, 2, sum)
#alternativa
colSums(y)

#### Questao 2

data(diamonds, package='ggplot2')
head(diamonds)

##a
aggregate(price ~ clarity, diamonds, sum)
aggregate(price ~ clarity, diamonds, median)

##b
aggregate(cbind(x,y) ~ cut + color, diamonds, median)

#### Questao 3

caminho = "C:/Users/vivia/Downloads/notas.txt"
df = read.table(file = caminho, header = T)

##a
"
laço for desnecessário
i = 1
for (n in df$Nota)
{
  if (n == 0.0)
  {
    df$Nota[i] = NA
  }
  i = i + 1
}
"

df$Nota[df$Nota == 0.0] = NA

##b
library(plyr)
aggregate(Nota ~ Sexo, df, mean)
aggregate(Nota ~ Sexo, df, sd)
#alternativa
aggregate(Nota ~ Sexo, df, each(mean,sd))

##c
aggregate(Nota ~ Turno, df, each(mean,sd))

##d
df2 = df[df$Nota >= 6, ]
aggregate(Nota ~ Sexo + Turno , df2, mean)

