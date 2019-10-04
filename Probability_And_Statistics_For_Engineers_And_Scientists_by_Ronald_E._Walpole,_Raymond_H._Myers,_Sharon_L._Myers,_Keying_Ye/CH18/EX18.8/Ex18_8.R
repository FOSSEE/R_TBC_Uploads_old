
# Chapter 18
# example 18.8 page no.717 from the pdf..
# to find bayes estimates of p, for all values of x in example 18.1

# refer example 18.1..

b <- function(p,x){
  
  choose(2,x)*p^x*(1-p)^(2-x)
  
}

p1 <- c(0.1,0.2)

pi <- c(0.6,0.4)

m <- c(b(0.1,0)*pi[1]+b(0.2,0)*pi[2],b(0.1,1)*pi[1]+b(0.2,1)*pi[2],b(0.1,2)*pi[1]+b(0.2,2)*pi[2])

post_p1 <- c(b(0.1,0)*pi[1]/m[1],b(0.1,1)*pi[1]/m[2],b(0.1,2)*pi[1]/m[3])

post_p2  <- c(1,1,1)-post_p1

cat("The bayes estimate of p for x = 0 is",p1[1]*post_p1[1]+p1[2]*post_p2[1])

cat("The bayes estimate of p for x = 1 is",p1[1]*post_p1[2]+p1[2]*post_p2[2])

cat("The bayes estimate of p for x = 2 is",p1[1]*post_p1[3]+p1[2]*post_p2[3])


