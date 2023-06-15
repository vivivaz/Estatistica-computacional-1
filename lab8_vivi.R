###################### LAB 8
library(moments)
library(ggplot2)

data(economics, package = "ggplot2")
class(economics)
head(economics)
?economics

####a e b
summary(economics$pop)
plot(pop ~ date, data=economics)
tx = (max(economics$pop) - min(economics$pop)) / min(economics$pop)
crescimento = tx *100
# temos uma populacao minima de 198.712 logo no comeco da serie 
# e uma populacao maxima de 320.402 ao final da serie. 
# A populacao teve uma taxa de crescimento de 61,23% nesse periodo quase 
# em linha reta como podemos observar no grafico.

summary(economics$psavert)
plot(psavert ~ date, data=economics)
hist(economics$psavert)
skewness(economics$psavert)
# temos uma assimetria positiva oque indica que a maior parte das observacoes 
# é menor que a media, alem disso observamos uma tendencia de queda na taxa de 
# reserva ao longo do tempo.

summary(economics$uempmed)
plot(uempmed ~ date, data=economics)
hist(economics$uempmed)
skewness(economics$uempmed)
# A duracao mediana do desemprego ficava oscilando pouco em torno da media de 
# 8 semanas, mas teve um alto crescimento em torno de 2010 atingindo 
# aproximadamente 25 semanas

summary(economics$unemploy)
plot(unemploy ~ date , data=economics)
hist(economics$unemploy)
skewness(economics$unemploy)
# o curva de variacao do numero de desempregados tem um comportamento similar a 
# a duracao do desemprego atingindo o seu maximo de 15.352 em torno de 2010

####c
plot(unemploy ~ pop, data=economics)
# nao ha uma associacao clara entre o unemploy e pop

####d 
economics$tx_desemprego = (economics$unemploy / economics$pop) *100

####e
ggplot(economics, aes(x=date, y=tx_desemprego)) + geom_line()

####f
economics$niveis_pce = NULL

n = 1
for (i in economics$pce)
{
  if (i < 1500)
  {
    economics$niveis_pce[n] = "nivel_1"
  }else if(i < 4000)
  {
    economics$niveis_pce[n] = "nivel_2"
  }else if(i < 7500)
  {
    economics$niveis_pce[n] = "nivel_3"
  }else
  {
    economics$niveis_pce[n] = "nivel_4"
  }
  n = n + 1

}

table(economics$niveis_pce)

economics$niveis_pce = factor(economics$niveis_pce, 
                              levels = c("nivel_1", 
                                         "nivel_2", 
                                         "nivel_3", 
                                         "nivel_4"))


####g

ggplot(economics,aes(x=uempmed, y=tx_desemprego)) + geom_point() + facet_grid(~niveis_pce)

