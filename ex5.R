set.seed(51)

Fn<-ecdf(rexp(131,0.14))
x=1-Fn(4)
1-pexp(14,0.14)
err=x-(1-pexp(14,0.14))
abs(err)