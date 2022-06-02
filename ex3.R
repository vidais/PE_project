library(readxl)
library(ggplot2)
library(reshape2)

ex3_excel <- read_excel("QualidadeARO3.xlsx", sheet = 1,col_types = "numeric")
cols<-c(grep("Paio-Pires",names(ex3_excel)),grep("Ihavo",names(ex3_excel)))
ex3_data <- melt(data.frame(ex3_excel[cols]),id.vars=0)

time=1:17568

g<-ggplot(data=ex3_data,aes(x=value,fill=variable))+geom_histogram(binwidth=7)
g<-g+labs(title = "Niveis de Ozono em 2 estacoes")
g