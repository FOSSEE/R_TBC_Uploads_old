#Example 11 chapter 2 page no 69
func<-function(x){
  x*(2-x)
}
k=1/integrate(func,lower=0,upper=2)$value
print(k)
