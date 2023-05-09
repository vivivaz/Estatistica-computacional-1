#####################lab3

#a
caminho = "C:/Users/vivia/Downloads/arquivos_estatistica_computacional/Dados_vendas.csv"
df = read.table(file = caminho, header = TRUE, sep = ";" )
class(df)

#b
class(df$Fornecedor)
class(df$Número.do.lote)
class(df$Data.da.compra)
class(df$Valor.da.compra)
class(df$Valor.da.venda)

df$Fornecedor = as.factor(df$Fornecedor)
df$Número.do.lote = as.factor(df$Número.do.lote)
df$Data.da.compra = as.Date.character(df$Data.da.compra, "%m/%d/%Y")

#c
head(df)

#d
mean(df$Valor.da.compra, na.rm = TRUE)
mean(df$Valor.da.venda, na.rm = TRUE)

#e
diferenca = df$Valor.da.venda - df$Valor.da.compra
class(diferenca)
df$diferenca
df$diferenca = diferenca
head(df)

#f
write.table(df,"C:/Users/vivia/Downloads/arquivos_estatistica_computacional/Dados_vendas_alt.txt",quote = FALSE, sep = ";")



