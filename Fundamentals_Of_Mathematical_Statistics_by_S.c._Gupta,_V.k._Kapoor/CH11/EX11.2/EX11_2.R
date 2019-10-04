#Page number-11.10
#Example number--11.2

a=matrix(c(8,40,-10,-18),nrow=2,ncol=2)
b=matrix(c(-66,214),nrow=2,ncol=1)
r=solve(a,b)
r
x=r[1,1]
y=r[2,1]
byx=8/10			  #Regression coefficient of Y on X
bxy=18/40			  #Regression coefficient of X on Y
z=sqrt(byx*bxy)
z
s.dy=solve(1/5,4/5)
s.dy 				  #Standard deviation of Y