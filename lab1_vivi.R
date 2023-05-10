##################### lab1

#Questao 1
? mean
example(plot)

# Questao 2
4*(245+sqrt(80)/2)
4*245+sqrt(80)/2
4*(245+sqrt(80))/2
(24**4)-3*53
(((2**12)-3)/3)*53
log(2)
exp(-2)

#Questao 3
x = 3
y = 6
z = 9
x * y
x - y - z
x**y
class(x)
class(y)
class(z)

#Questao 4
a = 4
b = 20

a + b
class(a + b)

b - a
class(b - a)

a * b
class(a * b)

b/a
class(b/a)

a/b
class(a/b)

#Questao 5
nome = "Vivian"
class(nome)
nchar(nome)

#Questao 6
9 >= 8
9 == 8
9 <= 8
"late" == "tela"
"late" != "tela"

#Questao 7
vetor.1 = c(2, 4, 6, 8)
vetor.2 = c(1, 1, 2, 2)

vetor.1 + 1
vetor.2 * 3
vetor.1 / 2
sqrt(vetor.1)
vetor.1 + vetor.2

#Questao 8
vetor.3 = factor(x = c("ensino superior", "ensino médio", "ensino médio", "ensino fundamental", NA, "ensino médio", "ensino médio", "ensino superior", "ensino superior"), 
                 levels = c("ensino fundamental", "ensino médio", "ensino superior"), 
                 ordered = TRUE)
class(vetor.3)
