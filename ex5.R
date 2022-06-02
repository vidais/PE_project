set.seed(988)

ave<-NULL
n<-3890

for (i in 1:n){

  ave<-c(ave,mean(rbinom(13,73,0.11)))

}
mean(ave)
abs(1.43-mean(ave)) #ARE U SURE?