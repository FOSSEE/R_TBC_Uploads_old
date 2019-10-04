#Example 3 Chapter 3
n=25
d=5     #defective items
r=4      #4 are choosen
x=c(0,1,2,3,4)    #no of defectives
t= ncol(combn(n,r))
P_x=c(ncol(combn(n-d,r))/t,ncol(combn(5,1))*ncol(combn(20,3))/t,
      ncol(combn(20,2))*ncol(combn(5,2))/t,ncol(combn(20,1))*ncol(combn(5,3))/t,
      ncol(combn(5,4))/t)
cat("expected no of defective ",x%*%P_x)  #without replacement

p=5/25         #prob of getting defective
q = 1 - p      #prob of not defective
P_x_withreplace = dbinom(x,r,p)
cat("expected no of defective ",x%*%P_x_withreplace)
