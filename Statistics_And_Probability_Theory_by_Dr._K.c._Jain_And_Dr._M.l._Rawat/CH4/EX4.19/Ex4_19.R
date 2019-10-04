#example 19 chapter 4 page no 186
m=0.02*200
p<-function(x){return(dpois(x,m))}
cat("prob of 5 defective in 200",p(5))   
cat("prob of 5 or less defective",p(0)+p(1)+p(2)+p(3)+p(4)+p(5))   
