#randomness
#install.packages(tseries)
#library(tseries)
#Null hypothesis: Arrangement is random.
#Alternative hypothesis: Arrangement is not random
z=alpha=qnorm(1-0.01)
#Criterion: Reject the null hypothesis if Z < -2.32 or Z > 2.32
arr<-as.factor(c('n','n','n','n','n','d','d','d','d','n','n','n','n','n','n','n','n'
       ,'n','n','d','d','n','n','d','d','d','d'))
runs.test(arr)
cat("Since z = -3.20 is less than -2.32, the null hypothesis must be
rejected. We conclude that the arrangement is not random")

