#TASK - Representar um diagrama de barras c/ a produção de resíduos do UK, SK e LV

#Required packages
library(readxl)
library(ggplot2)
library(dplyr)
library(reshape2)

#Retirar os dados do Excel. O excel deve estar no diretório de trabalho
ex1_excel<-read_excel("ResiduosperCapita.xlsx",sheet = 1,skip=11,n_max = 31,col_types = c("text","numeric","numeric"))

#Dar nomes às colunas do ficheiro
names(ex1_excel)<-c("country","2004","2018")

#Descobrir que linhas se referem aos países em estudo
rows<-c(grep("LV",ex1_excel$country),grep("UK",ex1_excel$country),grep("SK",ex1_excel$country))

#Criação de um data.frame com os países em estudo. O comando melt premite ao ggplot desenhar 2 variáveis no mesmo sistema de eixos
ex1_data<-melt(data.frame(ex1_excel[rows,]),id.vars="country")

#Criação do Gráfico
g<-ggplot(data=ex1_data,aes(x=country,y=value,fill=variable))

#Opções Estéticas e Legendas do Gráfico
g<-g+geom_bar(stat="identity",position = "dodge",width = 0.7)
g<-g+labs(title = "Residuos Per Capita em diferentes Paises da UE",x="Pais",y="Valor",fill="Anos")

#Mostrar o Gráfico
g

