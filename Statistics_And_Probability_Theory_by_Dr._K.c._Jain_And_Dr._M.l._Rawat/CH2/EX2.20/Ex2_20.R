#Example 20 chapter 2 page no 76
func<-function(x){
  1/(1+x^2)
}
k=1/integrate(func,lower=-Inf,upper=Inf)$value
print(k)
