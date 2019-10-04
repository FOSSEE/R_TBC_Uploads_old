#Example 4 Chapter 3
r=3     #sample size
n=12
d=3    #defective items
x=c(0,1,2,3)    #x denotes no of defectives in sample
t= ncol(combn(n,r))
P_x=c(ncol(combn(n-d,r))/t,ncol(combn(d,1))*ncol(combn(n-d,r-1))/t,
      ncol(combn(n-d,1))*ncol(combn(d,r-2))/t,ncol(combn(d,r))/t)
cat("expected no of defective ",x%*%P_x)  #without replacement
