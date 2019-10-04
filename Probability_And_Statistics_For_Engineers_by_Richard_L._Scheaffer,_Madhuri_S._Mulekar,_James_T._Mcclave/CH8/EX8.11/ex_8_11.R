A <- c(10.18,12.19,12)
B <- c(-14.71,4.40,12)
mu <- 0
#a
#P(d>=10.18)
a <- (A[1]- mu)/(A[2]/sqrt(A[3]))

cat("probability of observing a mean difference of a At least 10.18 kN for EOF measurements is",pt(a,df=A[3]-1,lower.tail = F))

#b
#P(d<= -14.71)
b <- (B[1]- mu)/(B[2]/sqrt(B[3]))
cat("probability of observing a mean difference of a At most -14.71 kN for EOF measurements is", pt(b,df=B[3]-1,lower.tail = T))
