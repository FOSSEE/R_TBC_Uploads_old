#Example 7 Chapter 4 page no, 171
n=12
x=c(0:n)
p=0.1
P=dbinom(x,n,p)
cat("prob of exactly 2 defective", P[3])
cat("prob of at least 2 defective", 1-P[1]-P[2])
cat("prob of no defective", P[1])
