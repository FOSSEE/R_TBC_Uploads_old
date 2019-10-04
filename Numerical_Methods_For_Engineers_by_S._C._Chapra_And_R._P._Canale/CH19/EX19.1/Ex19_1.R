f <- function(t) {
  1.7+cos(4.189*t+1.0472)
}

deltat=0.15
t1=0
t2=1.35
omega=4.189
del=(t2-t1)/9
t<-matrix(0,10)
for (i in 1:10){
  t[i]=t1+del*(i-1)
}
sumy=0
suma=0
sumb=0
y<-matrix(0,10)
a<-matrix(0,10)
b<-matrix(0,10)
for (i in 1:10){
  y[i]=f(t[i])
  a[i]=y[i]*cos(omega*t[i])
  b[i]=y[i]*sin(omega*t[i])
  sumy=sumy+y[i]
  suma=suma+a[i]
  sumb=sumb+b[i]
}
A0=sumy/10
A1=2*suma/10
B1=2*sumb/10
cat("The least square fit is y=A0+A1*cos(w0*t)+A2*sin(w0*t), where","\n","A0=",A0,"\n","A1=",A1,"\n","B1=",B1,"\n")
theta=atan(-B1/A1)
C1=(A1^2 + B1^2)^0.5
cat("Alternatively, the least square fit can be expressed as","\n","y=A0+C1*cos(w0*t + theta), where","\n","A0=",A0,"\n","Theta=",theta,"\n","C1=",C1,"\n","Or","\n","y=A0+C1*sin(w0*t + theta + pi/2), where","\n","A0=",A0,"\n","Theta=",theta,"\n","C1=",C1,"\n")