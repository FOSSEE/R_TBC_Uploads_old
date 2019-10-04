#example 18 chapter 4 page no 186
m=0.00005*10000
p<-function(x){return(dpois(x,m))}
cat("prob of 2 flat tyre among 10000",p(2))   
cat("prob of atmost 2 flat tyre among 10000",p(0)+p(1)+p(2))   
