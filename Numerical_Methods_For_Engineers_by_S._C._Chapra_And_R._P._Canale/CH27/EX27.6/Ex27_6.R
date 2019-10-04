library(rootSolve)
E=10*10^9
#Pa
I=1.25*10^-5
#m^4
L=3
#m
true<-c(1.0472, 2.0944, 3.1416, 4.1888)

#part a
h1=3/2
fun <- function (p) -h1^2*p^2+2
p <- uniroot.all(fun, c(-100,100))
p<-data.frame(p)
x<-matrix(0,2)
x[1]<-p$p[1]
x[2]<-p$p[2]
e=abs(abs(x[1])-true[1])*100/true[1];
cat("p=",x,"\n","error=",e,"------------------------------------------------\n")

#part b
h2=3/3
fun <- function (p) (3-(4*p^2)+p^4) # = (2 - p^2)^2 - 1
p <- uniroot.all(fun, c(-10,10))
p<-data.frame(p)
x<-matrix(0,2)
e<-matrix(0,2)
x[1]<-p$p[3]
x[2]<-p$p[1]
e[1]=abs(abs(x[1])-true[2])*100/true[2]
e[2]=abs(abs(x[2])-true[1])*100/true[1]
cat("p=",x,"\n","error=",e,"------------------------------------------------\n")

#part c
h3=3/4;
fun <- function (p) (2-h3^2*p^2)^3 - 2*(2-h3^2*p^2)
#a= #= (2 - 0.5625*p^2)^3 - 2 *(2 - 0.5625*p^2)
p <- uniroot.all(fun, c(-10,10))
p<-data.frame(p)
x<-matrix(0,3)
e<-matrix(0,3)
x[1]<-p$p[1]
x[2]<-p$p[2]
x[3]<-p$p[3]
e[1]=abs(abs(x[1])-true[3])*100/true[3]
e[2]=abs(abs(x[2])-true[2])*100/true[2]
e[3]=abs(abs(x[3])-true[1])*100/true[1]
cat("p=",x,"\n","error=",e,"------------------------------------------------\n")


#part d
h4=3/5;
fun <- function (p) (2-h4^2*p^2)^4 - 3*(2-h4^2*p^2)^2 + 1
p <- uniroot.all(fun, c(-10,10))
p<-data.frame(p)
x<-matrix(0,4)
e<-matrix(0,4)
x[1]<-p$p[1]
x[2]<-p$p[2]
x[3]<-p$p[3]
x[4]<-p$p[4]
e[1]=abs(abs(x[1])-true[4])*100/true[4]
e[2]=abs(abs(x[2])-true[3])*100/true[3]
e[3]=abs(abs(x[3])-true[2])*100/true[2]
e[4]=abs(abs(x[4])-true[1])*100/true[1]
cat("p=",x,"\n","error=",e,"------------------------------------------------\n")