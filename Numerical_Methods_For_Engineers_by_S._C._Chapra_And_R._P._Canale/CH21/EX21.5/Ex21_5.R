f <- function(x) {
  (0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
}

a=0
b=0.8
tval=1.640533
n=4
h=(b-a)/n
fa=f(a)
fb=f(b)
j=a+h
s=0
count=1
while (j<b){
  if ((-1)^count==-1){
    s=s+4*f(j)
  } else {
    s=s+2*f(j)
  }
  count=count+1
  j=j+h
}

l=(b-a)*(fa+s+fb)/(3*n)
cat("l=",l,"\n")
Et=tval-l
#error
et=Et*100/tval
#percent relative error

#by using approximate error estimate

#the fourth derivative of f

g <- function(x) {
  -21600+48000*x 
}
ans = integrate(f = g,0,0.8)

f4x=ans$value/(b-a)
#average value of fourth derivative
Ea=-(1/(180*4^4))*(f4x)*(b-a)^5
cat("The Error Et=",Et,"\n","The percent relative error et=",et,"%","\n","The approximate error estimate without using the true value=",Ea,"\n")

