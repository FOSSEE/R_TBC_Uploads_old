
#(Pg no. 141)

#P(X>25)
p = ppois(9,lambda = 12.5)
round(p, digits = 3)

 r= 10
 lambda = 0.5
 
 mean = r/lambda
 mean
 
 variance = r/(lambda^2)
 variance
 
 sd = variance^0.5
 round(sd, digits = 2)
 
 #P(X <= x) = 0.95 
 x = qgamma(p = 0.95, shape = r, scale = 1/lambda)
 cat("A schedule that allows'",x,"hours to prepare 10 slides should be met 95% of the time")

 