#Example 16 chapter 2 page no. 73
fx<-function(a){                     #prob density function for daily consumption
  1/9 *a*exp(-a/3)
}
P_x12 = integrate(fx,0,12)$value     #probabilty that consumption is in supply limit of 12 MkWH
print(1-P_x12)   #prob of X greater than 12 supply insufficient
