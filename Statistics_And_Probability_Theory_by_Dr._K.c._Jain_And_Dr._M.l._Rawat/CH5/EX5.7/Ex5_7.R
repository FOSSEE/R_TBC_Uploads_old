#Example 7 chapter 5 page no. 216
n=1000    #sample of 1000 cases
u=14 #mean
sd=2.5
p<-function(x){return(pnorm(x,u,sd))}
px12to15 = p(15)-p(12)
cat("candidates with score 12 to 15 ",as.integer(n*px12to15))
px10 = p(10)    
cat("candidates with score less than 10 ",as.integer(n*px10))
px20=p(20)
cat("candidates with score more than 20 ",as.integer(n*(1-px20)))
