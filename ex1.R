#TASK - Representar um diagrama de barras c/ a produção de resíduos do UK, SK e LV

#Required packages
library(readxl)
library(ggplot2)
library(dplyr)

#Excel
xlsx_ex1<-"ResiduosperCapita.xlsx"
UE_excel<-read_excel(xlsx_ex1,sheet = 1,skip=11,n_max = 31,col_types = c("text","numeric","numeric"))
names(UE_excel)<-c("Country","2014","2018")

#Descobrir as linhas a serem usadas
rows<-c(grep("LV",UE_excel$Anos),grep("UK",UE_excel$Anos),grep("SK",UE_exciel$Anos))
UE_data<-data.frame(UE_excel[rows,],row.names =1)

g<-ggplot(UE_data,aes(x=1))+geom_bar()