######################## LAB 9
library(knitr)

class(Base_remobilize)
head(Base_remobilize)
remobilize = Base_remobilize

#######a 
lapply(remobilize,class)

#Nível educacional
table(remobilize$`Nível educacional`)
remobilize$`Nível educacional`= factor(remobilize$`Nível educacional`,
                                            levels = c("Analfabeto",
                                                       "1 a 4 anos de escolaridade",
                                                       "5 a 8 anos de escolaridade",
                                                       "9 ou mais anos de escolaridade"))

#Renda mensal
table(remobilize$`Renda mensal`)
remobilize$`Renda mensal`= factor(remobilize$`Renda mensal`, 
                                       levels = c("Até 1 salário mínimo",
                                                  "2 a 3 salários mínimos",
                                                  "4 a 7 salários mínimos",
                                                  "8 a 10 salários mínimos",
                                                  "Acima de 10 salários mínimos"))

#Tempo sentado casa
table(remobilize$`Tempo sentado casa`)
remobilize$`Tempo sentado casa`= factor(remobilize$`Tempo sentado casa`, 
                                        levels = c("<=4 hs", 
                                                   "5-7 hs", 
                                                   "8-10 hs", 
                                                   ">=10 hs"))

#Tempo sentado fora
table(remobilize$`Tempo sentado fora`)
remobilize$`Tempo sentado fora`= factor(remobilize$`Tempo sentado fora`, 
                                        levels = c("<=4 hs", 
                                                   "5-7 hs", 
                                                   "8-10 hs", 
                                                   ">=10 hs"))

##b

remobilize$faixa_etaria = NULL
n = 1
for (i in remobilize$Idade)
  {
    if (i>=60 & i<=69)
      {
        remobilize$faixa_etaria[n] = "[60,69]"
      }else if (i>=70 & i<=79)
      {
        remobilize$faixa_etaria[n] = "[70,79]"
      }else if (i>=80)
      {
        remobilize$faixa_etaria[n] = "[80,+)"
      }
    n = n + 1
  }

table(remobilize$faixa_etaria)

##c
table(remobilize$Sexo)
table(remobilize$Sexo)/length(remobilize$Sexo)

table(remobilize$`Cor/raça`)
table(remobilize$`Cor/raça`)/length(remobilize$`Cor/raça`)

table(remobilize$UF)
table(remobilize$UF)/length(remobilize$UF)

table(remobilize$`Estado civil`)
table(remobilize$`Estado civil`)/length(remobilize$`Estado civil`)

table(remobilize$`Nível educacional`)
table(remobilize$`Nível educacional`)/length(remobilize$`Nível educacional`)

table(remobilize$Ocupação)
table(remobilize$Ocupação)/length(remobilize$Ocupação)

table(remobilize$`Aposentado ou pensionista`)
table(remobilize$`Aposentado ou pensionista`)/length(remobilize$`Aposentado ou pensionista`)

table(remobilize$`Renda mensal`)
table(remobilize$`Renda mensal`)/length(remobilize$`Renda mensal`)

table(remobilize$Covid)
table(remobilize$Covid)/length(remobilize$Covid)

table(remobilize$`Isolamento social`)
table(remobilize$`Isolamento social`)/length(remobilize$`Isolamento social`)

table(remobilize$`Presença de comorbidade`)
table(remobilize$`Presença de comorbidade`)/length(remobilize$`Presença de comorbidade`)

table(remobilize$`Tempo sentado casa`)
table(remobilize$`Tempo sentado casa`)/length(remobilize$`Tempo sentado casa`)

table(remobilize$`Tempo sentado fora`)
table(remobilize$`Tempo sentado fora`)/length(remobilize$`Tempo sentado fora`)

table(remobilize$Dor)
table(remobilize$Dor)/length(remobilize$Dor)

table(remobilize$faixa_etaria)
table(remobilize$faixa_etaria)/length(remobilize$faixa_etaria)

####d
#H_0: não há associação entre as variáveis/independentes
#H_1: há associação entre as variáveis

#Sexo e idade
kable(table(remobilize$Sexo, remobilize$faixa_etaria))
sexo_idade = table(remobilize$Sexo, remobilize$faixa_etaria)
summary(sexo_idade)
chisq.test(sexo_idade)
# p-value = 0.1171 não rejeitamos H_0

#Idade e cor/raça
kable(table(remobilize$faixa_etaria, remobilize$`Cor/raça`))
idade_cor = table(remobilize$faixa_etaria, remobilize$`Cor/raça`)
summary(idade_cor)
chisq.test(idade_cor)
# p-value = 0.6395 não rejeitamos H_0

#Sexo e nível educacional
kable(table(remobilize$Sexo, remobilize$`Nível educacional`))
sexo_nivel_edu = table(remobilize$Sexo, remobilize$`Nível educacional`)
summary(sexo_nivel_edu)
chisq.test(sexo_nivel_edu)
# p-value = 0.1049 não rejeitamos H_0

#Cor/raça e estado civil
kable(table(remobilize$`Cor/raça`, remobilize$`Estado civil`))
cor_estado_civil = table(remobilize$`Cor/raça`, remobilize$`Estado civil`)
summary(cor_estado_civil)
chisq.test(cor_estado_civil)
#p-value = 0.03636 rejeitamos H_0
barplot(cor_estado_civil, beside=TRUE, legend=TRUE)

#Ocupação e renda mensal
kable(table(remobilize$Ocupação, remobilize$`Renda mensal`))
ocupacao_renda = table(remobilize$Ocupação, remobilize$`Renda mensal`)
summary(ocupacao_renda)
chisq.test(ocupacao_renda)
#p-value < 0.00000000000000022 rejeitamos H_0
barplot(ocupacao_renda, beside=TRUE, legend=TRUE)

#Isolamento social e Covid
kable(table(remobilize$`Isolamento social`, remobilize$Covid))
isolamento_covid = table(remobilize$`Isolamento social`, remobilize$Covid)
summary(isolamento_covid)
chisq.test(isolamento_covid)
#p-value = 0.004823 rejeitamos H_0
barplot(isolamento_covid, beside=TRUE, legend=TRUE)

#Idade e presença de comorbidade
kable(table(remobilize$faixa_etaria, remobilize$`Presença de comorbidade`))
idade_comorbidade = table(remobilize$faixa_etaria, remobilize$`Presença de comorbidade`)
summary(idade_comorbidade)
chisq.test(idade_comorbidade)
#p-value = 0.0000000000000137 rejeitamos H_0
barplot(idade_comorbidade, beside=TRUE, legend=TRUE)

#Sexo e Dor
kable(table(remobilize$Sexo, remobilize$Dor))
sexo_dor = table(remobilize$Sexo, remobilize$Dor)
summary(sexo_dor)
chisq.test(sexo_dor)
#p-value = 0.01546 rejeitamos H_0
barplot(sexo_dor, beside=TRUE, legend=TRUE)

#Presença de comorbidade e Dor
kable(table(remobilize$`Presença de comorbidade`, remobilize$Dor))
comorbidade_dor = table(remobilize$`Presença de comorbidade`, remobilize$Dor)
summary(comorbidade_dor)
chisq.test(comorbidade_dor)
# p-value < 0.00000000000000022 rejeitamos H_0
barplot(comorbidade_dor, beside=TRUE, legend=TRUE)
