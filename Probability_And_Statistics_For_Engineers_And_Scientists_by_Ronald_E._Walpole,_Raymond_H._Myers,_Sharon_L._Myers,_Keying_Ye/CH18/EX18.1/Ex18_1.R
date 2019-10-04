
# Chapter 18
# Example 18.1 page no. 711 from the pdf..
# To find the posterior probability distribution..

b <- function(p,x){
  
  choose(2,x)*p^x*(1-p)^(2-x)
  
}

p1 <- c(0.1,0.2)

pi <- c(0.6,0.4)

m <- c(b(0.1,0)*pi[1]+b(0.2,0)*pi[2],b(0.1,1)*pi[1]+b(0.2,1)*pi[2],b(0.1,2)*pi[1]+b(0.2,2)*pi[2])

post_p1 <- c(b(0.1,0)*pi[1]/m[1],b(0.1,1)*pi[1]/m[2],b(0.1,2)*pi[1]/m[3])

post_p2  <- c(1,1,1)-post_p1

cat("The posterior for p=0.1 given x is",post_p1,"x ranges from 0 to 2")

cat("The posterior for p=0.2 given x is",post_p2,"x ranges from 0 to 2")



