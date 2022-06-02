library(readxl)
library(ggplot2)
library(reshape2)
rm<-(ls())

ex2_excel <- read_excel("EsperancaVida.xlsx", sheet = 1,skip=8,n_max=(2020-1960+1))
country<-c("Alemanha", "Bulgaria", "Dinamarca")
cols<-c(grep("DE",names(ex2_excel)),grep("BG",names(ex2_excel)),grep("DK",names(ex2_excel)))

ex2_data <- data.frame(ex2_excel[43:60,cols])
ex2_data[ex2_data == 0] <- NA
time<-2002:2019

p <- ggplot(data = ex2_data,aes(x=time))
p <- p+geom_line(aes(y=ex2_data[,1],color="Alemanha"))+geom_line(aes(y=ex2_data[,4],color="Bulgaria"))+ geom_line(aes(y=ex2_data[,7],color="Dinamarca"))
p <- p+labs(title="Esperanca Media de Vida em alguns Paises da Europa",x="Tempo",y="Idade")
p
