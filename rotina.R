remove(list=ls())
setwd("D:/Backup Pendrive/_PacotesR/_R cran/MultivariateAnalysis/data")
D=read.table("Dados.BIN.txt",head=TRUE)

#    install.packages("MultivariateAnalysis")
library(MultivariateAnalysis)
?Distancia

#matriz de coincidencia
Distancia(D,Metodo = 9)
#Matriz de discordancia
1-Distancia(D,Metodo = 9)
Distancia(D,Metodo = 10)
#matriz de dissimilaridade de Jacard
dist=Distancia(D,Metodo = 12)

dendo=hclust(dist)
plot(dendo)
