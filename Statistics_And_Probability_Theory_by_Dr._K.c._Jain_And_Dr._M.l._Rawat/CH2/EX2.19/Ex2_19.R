#Example 19 chapter 2 page no. 76
Fx<-function(a){                     #prob density function
  return(1 - 4/(a^2))
}
P_x3 = Fx(3)
print(P_x3)   #prob of X less than equal to 3
cat("prob of 4<=x<=5 is",Fx(5)-Fx(4))
