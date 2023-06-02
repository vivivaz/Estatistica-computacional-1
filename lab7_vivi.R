####################### LAB 7

#### Questao 1
data(diamonds, package = 'ggplot2')
?diamonds

##a
library(dplyr)
diamonds %>% summarise(mean(carat))

##b
diamonds %>% group_by(color) %>% summarise(mean(x))

##c
diamonds %>% filter(color %in% c("I", "J"))

##d
diamonds %>% filter(color %in% c("I", "J")) %>% select(carat, price, cut)

##e
diamonds %>% filter(color %in% c("I", "J")) %>% select(carat, price, cut) %>% mutate( Preco.grama = price/carat)

