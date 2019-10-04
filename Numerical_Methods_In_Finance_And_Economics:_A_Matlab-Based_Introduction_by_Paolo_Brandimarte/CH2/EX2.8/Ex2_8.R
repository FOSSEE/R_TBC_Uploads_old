#install.packages("FinCal")
library("FinCal")
cf<-c(-100, 8, 8, 8, 8, 108)
h=polyroot(cf[length(cf):1])
h
rho=1/h-1
rho
index = which((abs(Im(rho)) < 0.001) != 0)
rho[index]
irr(cf)