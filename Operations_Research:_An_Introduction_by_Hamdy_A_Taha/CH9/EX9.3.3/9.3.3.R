##Chapter 8 : Heuristic Programming
##Example 3-3 : Page 396
library(GenSA)
#function that returns the function value
Fx<-function(x){
  F=c(90,60,50,80,100,40,20,70)
  return(F[ceiling(x)])
}
#GenSA is a continues function,But as you see in the return value in function Fx, we return the value of the ceiling of the input
Solution=GenSA(fn=Fx,lower=c(1),upper=c(8),control = list(smooth =F))
Solution$value
ceiling(Solution$par)
