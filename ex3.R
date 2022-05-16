library(readxl)
library(ggplot2)
library(reshape2)

ex3_excel <- read_excel("QualidadeARO3.xlsx", sheet = 1)
cols<-c(grep("Paio-Pires",names(ex3_excel)),grep("Ihavo",names(ex3_excel)))
ex3_data <- melt(data.frame(ex3_excel[cols]),id.vars=0)

g<-ggplot(ex3_data,aes(x=0:)+geom_histogram(binwidth = 10)