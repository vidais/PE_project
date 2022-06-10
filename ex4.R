library(readxl)

ex4<-read_excel("Utentes.xlsx")

plot(ex4$IMC,ex4$Colesterol,col="red",pch=18, main="Dispersão", xlab = "IMC", ylab = "Colesterol")