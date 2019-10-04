#page no. 309
#example 8-3

#functions used
#qnorm():quantile function of the normal distribution:the quantile function maps from probabilities to values in normal distribution 
#ceiling():ceiling(x) rounds to the nearest integer that's larger than x.

rho=0.05
z0.975=ceiling(qnorm(1-rho/2))  

  #part (a)

x_bar=112    #(given)
sigma=0.4    #(given)
n=25         #number of times the voltage is measured
i=z0.975*sigma/sqrt(n)

cat("Insetting values into (8-11),we obtain the interval ",x_bar,"+-",i,"V")

  #part (b)

s=0.6
i2=z0.975*s/sqrt(n)
cat("Insetting values into (8-14),we obtain the approximate estimate ",x_bar,"+-",i2,"V")

print("Since t0.975(25)=2.06 (from the table) the exact estimate (8-17) yields 112+-0.247 V")