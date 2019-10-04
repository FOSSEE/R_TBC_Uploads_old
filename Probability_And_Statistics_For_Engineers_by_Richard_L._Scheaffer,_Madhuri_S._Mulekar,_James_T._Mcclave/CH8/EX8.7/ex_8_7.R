# USing chi-square distribution
# give, vraiance =0.8,n =10
var=0.80
n =10
ll = 0.05
ul = 0.95
a= var*qchisq(0.05,df=9)/(n-1)
b= var*qchisq(0.95,df=9)/(n-1)
cat("value of a and b such that the sample variance of the amounts dispensed will be between a and b with probability 0.90 is",
    a,"-",b )