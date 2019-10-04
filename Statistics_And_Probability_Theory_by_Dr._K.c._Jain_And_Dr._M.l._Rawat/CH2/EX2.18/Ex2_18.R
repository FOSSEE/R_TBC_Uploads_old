#Example 18 chapter 2 page no. 74
fx<-function(a){                     #prob density function
  2*exp(-2*a)
}
P_x1to3 = integrate(fx,1,3)$value
print(P_x1to3)   #prob of  1<=x<=3
px1by2 = integrate(fx,1/2,Inf)$value
cat("prob of X more than 0.5 is",px1by2)
