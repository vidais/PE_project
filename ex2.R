library(readxl)
library(ggplot2)
library(reshape2)
rm=(ls())

ex2_excel <- read_excel("EsperancaVida.xlsx", sheet = 1,skip=8,n_max=(2020-1960+1))

cols<-c(grep("DE",names(ex2_excel)),grep("BG",names(ex2_excel)),grep("DK",names(ex2_excel)))

ex2_data <- melt(data.frame(ex2_excel[cols]))

p <- ggplot(data = ex2_data,aes(x=1960:2019,y=value,fill=variable)) + geom_line()
p
