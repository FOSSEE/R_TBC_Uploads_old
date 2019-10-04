#Example 6 Chapter 4 page no 171
p=2/6
n=8
x=c(0:n)
P=dbinom(x,n,p)
cat("percentage of getting 3 success",100*P[4])