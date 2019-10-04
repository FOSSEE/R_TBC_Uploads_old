#Example 8 chapter5 page no 217
n=500   #500 workers
u=75   #mean 75 rs
sd=15    #sd 15 rs
p<-function(x){return(pnorm(x,u,sd))}
cat("workers getting more than Rs.90 are ",as.integer(n*(1-p(90))))
cat("workers getting less than Rs.45 are ",as.integer(n*(p(45))))
