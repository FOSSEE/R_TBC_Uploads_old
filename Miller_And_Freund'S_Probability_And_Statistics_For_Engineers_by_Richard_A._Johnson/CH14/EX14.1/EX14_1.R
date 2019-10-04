surment<-c(99.0,102.3,99.8,100.5,99.7,96.2,99.1,102.5,103.3,97.4,100.4,98.9,98.3,98.0,101.6)
mu=98.0
#install.packages(BSDA)
library(BSDA)
#m0=98.0(p=1/2)
#m1>98.0(p>1/2)
SIGN.test(surment,NULL,alternative = 'g',mu)
print("the probability of X >= 12 is 0.0065")
cat("Since 0.0065 is less than 0.01, the null hypothesis must be rejected;
we conclude that the median octane rating of the given kind of gasoline
exceeds 98.0")


