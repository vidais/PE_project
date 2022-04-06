library(readxl)
library(ggplot2)


xlsx_ex2 = "EsperancaVida.xlsx"
UE_excel = read_excel(xlsx_ex2, sheet = 1,skip=8,n_max=60)

UE_data = data.frame(subset(UE_excel,),row.names = 1)

p = ggplot(data = UE_data) + geom_histogram(mapping = aes("Tempo"))