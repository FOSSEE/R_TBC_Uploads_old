#Example 17 chapter 3 page no 111
Fx<-function(x){
  (1/6)*x*exp(-x/6)
}
En=integrate(Fx,0,Inf)$value
variance<-function(x){
  (1/6)*((x-En)^2)*exp(-x/6)
}
cat("expected lifetime",En)
v=integrate(variance,0,Inf)
cat("variance of X",v$value)
