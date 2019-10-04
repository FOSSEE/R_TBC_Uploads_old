#Example 17 chapter 2 page no. 74
fx<-function(a){                     #prob density function
  1/2 *a
}
P_x = integrate(fx,1/2,3/4)$value
print(P_x)   #prob of area under line y=x/2 from x=1/2 to x=3/4