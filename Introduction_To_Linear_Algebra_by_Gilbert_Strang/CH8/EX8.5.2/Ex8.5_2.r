#integrate is a function from package stats which is included in R by default
#if not install package stats
# Example : 2   Chapter : 8.5     Page No: 448
# length of function sinx and sinx and cosx are orthogonal in function space
f1<-function(x){
  return (sin(x)*sin(x))
}
f2<-function(x){
  return (sin(x)*cos(x))
}
print("Inner product of sinx and sinx is ")
lsin2x<-integrate(f1,0,2*pi)
print(lsin2x)
print("Length of sinx is square root of above inner product")
print(sqrt(lsin2x$value))
print("Cos x and sinx are orthogonal in functional space because their inner product equals zero")
lsinxcosx<-integrate(f2,0,2*pi)
print(lsinxcosx)
#The  answer may slightly vary due to  rounding off values