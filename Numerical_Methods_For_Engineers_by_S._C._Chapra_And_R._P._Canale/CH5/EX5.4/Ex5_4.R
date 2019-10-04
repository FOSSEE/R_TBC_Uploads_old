m=68.1
#kg
v=40
#m/s
t=10
#s
g=9.8
#m/s^2

f <- function(c) {
  g*m*(1-exp(-c*t/m))/c - v 
}

x1=12
x2=16
xt=14.7802
#true value
#"enter the tolerable approximate error="
e=0.5
xr=(x1+x2)/2
i=1
et=abs(xr-xt)/xt*100
#error
cat("Iteration:",i)
cat("xl:",x1)
cat("xu:",x2)
cat("xr:",xr)
cat("et(%):",et)
cat("----------------------------------------")
etemp=100

while (etemp>e){
  if (f(x1)*f(xr)>0){
    x1=xr
    xr=(x1+x2)/2
    etemp=abs(xr-x1)/xr*100
    et=abs(xr-xt)/xt*100
  }
  if (f(x1)*f(xr)<0){
    x2=xr
    xr=(x1+x2)/2
    etemp=abs(xr-x2)/xr*100
    et=abs(xr-xt)/xt*100
  }
  if (f(x1)*f(xr)==0){
    break
  }
  i=i+1
  cat("Iteration:",i)
  cat("xl:",x1)
  cat("xu:",x2)
  cat("xr:",xr)
  cat("et(%):",et)
  cat("ea(%)",etemp)
  cat("----------------------------------------")
}
cat("The result is=",xr)