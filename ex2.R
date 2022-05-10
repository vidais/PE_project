library(readxl)
library(ggplot2)


xlsx_ex2 <- "EsperancaVida.xlsx"
UE_excel <- read_excel(xlsx_ex2, sheet = 1,skip=8,n_max=(2019-1960),row.names(1))

UE_data <- data.frame(subset(UE_excel,))

p <- ggplot(data = UE_data,aes(x=)) + geom_histogram()
p
