f <- function(x) {
  x^10 - 1
}

x1=0
x2=1.3
xt=1

#using bisection method
cat("BISECTION METHOD:")
xr=(x1+x2)/2
et=abs(xr-xt)/xt*100
#error
cat("Iteration:",1,"\n","xl:",x1,"\n","xu:",x2,"\n","xr:",xr,"\n","et(%):",et,"\n","----------------------------------------\n")

for (i in 2:5){
  if (f(x1)*f(xr)>0){
    x1=xr
    xr=(x1+x2)/2
    ea=abs(xr-x1)/xr*100
    et=abs(xr-xt)/xt*100
    } else if (f(x1)*f(xr)<0){
      x2=xr
      xr=(x1+x2)/2
      ea=abs(xr-x2)/xr*100
      et=abs(xr-xt)/xt*100
    }
  
  if (f(x1)*f(xr)==0){
    break
  }
cat("Iteration:",i,"\n")
cat("xl:",x1,"\n")
cat("xu:",x2,"\n")
cat("xr:",xr,"\n")
cat("et(%):",et,"\n")
cat("ea(%)",ea,"\n")
cat("----------------------------------------\n")
}

#using false position method
cat("FALSE POSITION METHOD:")
x1=0
x2=1.3
xt=1
xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1))
et=abs(xr-xt)/xt*100
#error
cat("Iteration:",1,"\n","xl:",x1,"\n","xu:",x2,"\n","xr:",xr,"\n","et(%):",et,"\n","----------------------------------------")

for (i in 2:5){
  if (f(x1)*f(xr)>0){
    x1=xr
    xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1))
    ea=abs(xr-x1)/xr*100
    et=abs(xr-xt)/xt*100
  }
  else if (f(x1)*f(xr)<0){
      x2=xr
      xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1))
      ea=abs(xr-x2)/xr*100
      et=abs(xr-xt)/xt*100
    }
  if (f(x1)*f(xr)==0){
    break
  }
cat("Iteration:",i,"\n")
cat("xl:",x1,"\n")
cat("xu:",x2,"\n")
cat("xr:",xr,"\n")
cat("et(%):",et,"\n")
cat("ea(%)",ea,"\n")
cat("----------------------------------------\n")
}