xf=10
#cm
xe=2.5
#cm
#T(0,t)=40; boundary condition
#T(10,t)=200; boundary condition
#f(x)=10; uniform heat source
f <- function(x) {
  10*(xe-x)/xe
}
int1=integrate(f = f,lower = 0,upper = xe)

g <- function(x) {
  10*(x-0)/xe
}
int2=integrate(f = g,lower = 0,upper = xe)

cat("The results are:","\n","0.4*T1-0.4*T2=-(dT/dx)*x1 + c1","\n","where c1=",int1$value,"\n","and","\n","-0.4*T1+0.4*T2=-(dT/dx)*x2 + c2","\n","where c2=",int2$value,"\n")