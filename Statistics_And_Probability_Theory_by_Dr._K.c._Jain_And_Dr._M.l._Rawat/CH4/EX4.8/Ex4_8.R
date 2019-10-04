#Example 8 Chapter 4 page no. 172
P=65/100
n=10
X=c(1:n)
PX=dbinom(X,n,P)
Pxmorethan_equal7= PX[7] + PX [8] + PX[9] +PX[10]
print(Pxmorethan_equal7)
