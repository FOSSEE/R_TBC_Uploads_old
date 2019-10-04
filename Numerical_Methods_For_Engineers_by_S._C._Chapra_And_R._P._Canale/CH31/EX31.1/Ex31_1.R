#d2T/dx2=-10; equation to be solved
#T(0,t)=40; boundary condition
#T(10,t)=200; boundary condition
#f(x)=10; uniform heat source
#we assume a solution T=a*X^2 + b*x +c
#differentiating twice we get d2T/dx2=2*a
a=-10/2
#using first boundary condition
c=40
#using second boundary condtion
b=66
#hence final solution T=-5*x^2 + 66*x + 40
f <- function(x) {
  -5*x^2 + 66*x + 40
}
T<-matrix(0,110)
count=1
for (i in seq(0,11,0.1)){
  T[count]=f(i)
  count=count+1
}
x<-seq(0,11,0.1)
plot(x,T,main = "Temperature(T) vs distance(x)",xlab = "x (cm)",ylab = "T (units)")
lines(x,T)