#######################  LAB 5

#### Questao 1
notas = c(4.6, 5.9, 7.5, 6.8, 5.1, 8.1, 6.2, 8.1, 7.8, 6.3)

##a
ifelse(notas < 7, "Reprovado", "Aprovado")


for (n in notas)
  if (n < 7)
  {
  print("Reprovado")
  } else
    {
    print("Aprovado")
    }
##b
for (n in notas)
{
  if (n < 6)
  {
    print("E")
  }else if (n < 7)
    {
      print("D")
    }else if(n < 8)
      {
        print("C")
      }else if(n < 9)
        {
          print("B")
        }else
          {
            print("A")
          }
}

## c
nomes = c("Ana", "Camila", "Joao", "Pedro", "Daniel", "Theo", "Lis", "Alice", "Oliver", "Catarina")
dados = data.frame(nomes, notas)


##d
n = 1
for (i in dados$notas)
{
  if (i >= 7)
  {
  print(dados$nomes[n])
  }
  n = n + 1
}

#### Questao 2
##a
seq(3,15,3)
  
##b
seq(9,81,9)

##c
seq(9,90,9)

##d
seq(-10,10,5)

##e
rep(seq(1,4,1),3)

##f
rep(seq(,4,),c(3,3,3,3))

##g
seq(5,,)

##h
seq(10,-10,-2)

##i
seq(-20,30,5)

##j
rep(seq(,7,3),c(4,4,4))

##k
rep(seq(,7,3),c(1,4,6))


