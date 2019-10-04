#Example 4 Chapter 4 page no. 171
p=2/10
n=10
x=c(0:n)
px=dbinom(x,n,p)
Pxlessthan_equal3 = px[1]+px[2]+px[3]+px[4]
print(Pxlessthan_equal3)     
cat("for 100 samples ",100*Pxlessthan_equal3)
