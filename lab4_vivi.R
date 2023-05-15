#######################  LAB 4

#### Questao 1
##a
calcular = function(x)
  {
    y = 2*x + exp(x) - x**3
    print(y)
  }

calcular(2)
calcular(3)
x = c(2,4,6,8)
calcular(x)

##b
somar = function(x,y)
  {
    z = x + y
    print(z)
  }
  
somar(2,10)

##c
recebe_nome = function(nome)
  {
    print(sprintf("Boa tarde %s!", nome))
  }

recebe_nome("Vivian")

##d
vencedores = function(primeiro,segundo)
  {
    print(sprintf("O primeiro colocado foi %s e o segundo colocado foi %s", primeiro, segundo))
  }

vencedores("Maria", "Joao")

##Questao 2
calcula_log = function(x)
  {
    if (x >= 0)
    {
      y = log(x)
      print(y)
    }
  }

calcula_log(2)
calcula_log(-2)

##Questao 3 
calcula_log_2 = function(x)
{
  if (x >= 0)
  {
    y = log(x)
    print(y)
  } else
    {
      y = log(x**2)
      print(y)
    }
}
calcula_log_2(10)
calcula_log_2(-10)

## Questao 4
calcular_x =function(x)
{
  if (x < 0)
  {
    print(x**4)
  }else if(0 <= x && x <= 10)
    {
      print(x)
    }else
      {
        print(x**2)
      }
}
calcular_x(-10)
calcular_x(2)
calcular_x(20)

#### Questao 5
classificar = function(v)
{
  for (i in v)
  {
    if (i > 0)
    {
      print("positivo")
    }else if( i < 0)
      {
        print("Negativo")
      }
  }
}
v = c(-10,0,10)
classificar(v)

#### Questao 6
classificar_2 = function(v)
{
  for (i in v)
  {
    if (i > 0)
    {
      print(i)
    }else if( i < 0)
    {
      print(abs(i))
    }
  }
}

classificar_2(v)

#### Questao 7
classificar_3 = function(v)
{
  for (i in v)
  {
    if (i >= 0 && i <= 100)
    {
      print("“dentro")
    }else
    {
      print("fora")
    }
  }
}
v = c(-10,0,10,1000)
classificar_3(v)
