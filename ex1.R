#TASK - Representar um diagrama de barras c/ a produção de resíduos do UK, SK e LV

#Required packages
library(readxl)
library(ggplot2)
library(dplyr)

#Excel
xlsx_ex1<-"ResiduosperCapita.xlsx"
UE_excel<-read_excel(xlsx_ex1,sheet = 1,skip=11,n_max = 31,col_types = c("text","numeric","numeric"))
names(UE_excel)<-c("country","X2004","X2018")

#Descobrir as linhas a serem usadas
rows<-c(grep("LV",UE_excel$country),grep("UK",UE_excel$country),grep("SK",UE_excel$country))
UE_data<-data.frame(UE_excel[rows,])

g<-ggplot(data=UE_data,aes(x=country,y=X2004,fill=X2018))
g<-g+geom_bar(stat="identity",position = "dodge",width = 0.7)
#g<-g+geom_histogram(aes(y=X2018),stat="identity",width = 0.5,fill="green")
g<-g+labs(title = "Residuos Per Capita em diferentes Paises da UE",x="Pais",X2004="2004",X2018="2018")
g

