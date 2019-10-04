#Example 13 chapter 2 page no. 71
x1<-function(a){
  0
}
x2<-function(a){
  1+a
}
lemda=1/(integrate(x2,1,4)$value)
P_x3 = lemda*integrate(x2,1,3)$value
print(P_x3)
