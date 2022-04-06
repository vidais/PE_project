library(readxl)
library(ggplot2)

xlsx_ex2 = "excels/EsperancaVida.xlsx"
UE_excel = read_xlsx(xlsx_ex2, sheet = "Quadro",)

UE_data = data.frame(subset(UE_excel,c(5,8,11)))

p = ggplot(data = UE_data) + geom_histogram(mapping = aes("Tempo"))