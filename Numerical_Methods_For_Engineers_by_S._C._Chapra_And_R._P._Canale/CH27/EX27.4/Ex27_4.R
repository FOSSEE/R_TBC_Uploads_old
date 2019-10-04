library(rootSolve)
m1=40
#kg
m2=40
#kg
k=200
#N/m
fun <- function (sqw) sqw^2-20*sqw+75
p <- uniroot.all(fun, c(0,100))
p<-round(data.frame(p))
r<-matrix(0,2)
r[1]<-p$p[1]
r[2]<-p$p[2]
f1=(r[1])^0.5
f2=(r[2])^0.5
pi = 3.1415927
Tp1=(2*pi)/f1
Tp2=(2*pi)/f2

#for first mode
cat("For first mode:","\n","Period of oscillation:",Tp1,"\n","A1=-A2","\n","--------------------------------------------------\n")

#for first mode
cat("For second mode:","\n","Period of oscillation:",Tp2,"\n","A1=A2")