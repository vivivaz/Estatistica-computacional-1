####################### prova 2 - estatistica computacional 

#### Questao 1
data(txhousing, package = "ggplot2")

help(txhousing, package = "ggplot2")

class(txhousing)

txhousing = as.data.frame(txhousing)

class(txhousing)

head(txhousing)

##a
aggregate(sales ~ year, txhousing, mean)

##b
aggregate(volume ~ month + year, txhousing, sum)

##c
txhousing$region = NA

west_region = c("Amarillo", "Lubbock", "Abilene", "El Paso", "Odessa", "Midland", "San Angelo")
north_region = c("Arlington", "Garland", "Wichita Falls", "Paris", "Fort Worth", "Dallas", "Tyler", "Collin County", "Denton County", "Irving", "Waco", "Longview-Marshall", "Nacogdoches", "NE Tarrant County", "Sherman-Denison", "Temple-Belton", "Texarkana", "Killeen-Fort Hood")
east_region = c("Lufkin", "Beaumont", "Houston", "Brazoria County", "Montgomery County", "Port Arthur", "Galveston")
south_region = c("Austin", "Bay Area", "Brownsville", "San Antonio", "Corpus Christi", "Laredo", "Harlingen", "Kerrville", "McAllen", "San Marcos", "South Padre Island", "Victoria", "Bryan-College Station", "Fort Bend")

j = 1
for (i in txhousing$city)
{
  for (n in west_region)
  {
    if (i == n)
    {
      txhousing$region[j] = "West"
    }
  }
  j = j + 1
}

j = 1
for (i in txhousing$city)
{
  for (n in north_region)
  {
    if (i == n)
    {
      txhousing$region[j] = "North"
    }
  }
  j = j + 1
}

j = 1
for (i in txhousing$city)
{
  for (n in east_region)
  {
    if (i == n)
    {
      txhousing$region[j] = "East"
    }
  }
  j = j + 1
}

j = 1
for (i in txhousing$city)
{
  for (n in south_region)
  {
    if (i == n)
    {
      txhousing$region[j] = "South"
    }
  }
  j = j + 1
}

##d

sum(is.na(txhousing$median))

txhousing = txhousing[is.na(txhousing$median) != T, ]

##e

txhousing2 = txhousing[txhousing$year >= 2010 , ]
txhousing2 = txhousing2[txhousing2$median > 120000, ]


##f

x = aggregate(volume ~ region, txhousing2, sum)
y = aggregate(sales ~ region, txhousing2, sum)

preco_medio = x$volume/ y$sales

PMV = data.frame(x, y$sales, preco_medio)

# As regioes com o maior preco medio de venda sao East e South.
