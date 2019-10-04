f <- function(x) {
  x^3 - 13*x - 12
}

x1t=-3
x2t=-1
x3t=4
x0=4.5
x1=5.5
x2=5

cat("iteration:",0,"\n","xr:",x2,"---------------------------------------------\n")

for (i in 1:4){
  h0=x1-x0
  h1=x2-x1
  d0=(f(x1)-f(x0))/(x1-x0)
  d1=(f(x2)-f(x1))/(x2-x1)
  a=(d1-d0)/(h1+h0)
  b=a*h1+d1
  c=f(x2)
  d=(b^2 - 4*a*c)^0.5
  if (abs(b+d)>abs(b-d)){
  x3=x2+((-2*c)/(b+d))
}else {
      x3=x2+((-2*c)/(b-d))
    }
  ea=abs(x3-x2)*100/x3
  x0=x1
  x1=x2
  x2=x3
  cat("iteration:",i,"\n")
  cat("xr:",x2,"\n")
  cat("ea(%):",ea,"\n")
  cat("---------------------------------------------\n")
}