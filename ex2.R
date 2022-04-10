library(readxl)
library(ggplot2)


xlsx_ex2 <- "EsperancaVida.xlsx"
UE_excel <- read_excel(xlsx_ex2, sheet = 1,skip=8,n_max=60)

UE_data <- data.frame(subset(UE_excel,),row.names = 1)

#col_nr<-c(grep("LV",UE_excel$country),grep("UK",UE_excel$country),grep("SK",UE_excel$country))

p <- ggplot(data = UE_data,aes(x=)) + geom_histogram()