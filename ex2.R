library(readxl)
library(ggplot2)


xlsx_ex2 <- "EsperancaVida.xlsx"
UE_excel <- read_excel(xlsx_ex2, sheet = 1,skip=8,n_max=(2019-1960))
rows<-c(grep("DE",UE_excel[0,]),grep("BG",UE_excel[0,]),grep("DK",UE_excel[0,]))
UE_data <- data.frame(subset(UE_excel,))

p <- ggplot(data = UE_data,aes(x=)) + geom_histogram()
p
