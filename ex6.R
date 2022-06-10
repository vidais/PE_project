set.seed(598)

x<-1
samples<-NULL
average<-NULL


for (x in 1:3){
  samples<-runif(n=1880,min=7,max=11)
  average<-c(average,mean(samples[x]))
  x<-x+1
}
ave2<-mean(average)

hist(samples,breaks = 10)