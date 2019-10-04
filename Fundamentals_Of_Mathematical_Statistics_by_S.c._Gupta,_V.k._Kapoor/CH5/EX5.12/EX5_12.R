#Page number--5.17
#Example number--5.12
#LOADED PACKAGE---->cubature
# Constructing Quadratic Formula
result <- function(a,b,c){
  if(delta(a,b,c) > 0){ # first case D>0
        x_1 = (-b+sqrt(delta(a,b,c)))/(2*a)
        x_2 = (-b-sqrt(delta(a,b,c)))/(2*a)
        result = c(x_1,x_2)
  }
  else if(delta(a,b,c) == 0){ # second case D=0
        x = -b/(2*a)
  }
  else {"There are no real roots."} # third case D<0
}

# Constructing delta
delta<-function(a,b,c){
      b^2-4*a*c
}


#Total probability = 1
integrand=function(x){x*(2-x)}
a=integrate(integrand,lower=0,upper=2)
a
y0=1/1.333

u1d=(3*2^2)/(3*4)				 #Mean
u2d=(3*2^3)/(4*5)
u3d=(3*2^4)/(5*6)
u4d=(3*2^5)/(6*7)
#Variance
#u2=u2d-u1d^2
u2=6/5-1
#u3=u3d-3*u2d*u1d+2*u1d^3
u3=8/5-3*6/5*1+2
#u4=u4d-4*u3d*u1d+6*u2d*u1d^2-3*u1d^4
u4=16/7-4*8/5*1+6*6/5*1-3*1
beta1=u3^2/u2^3
beta1
beta2=u4/u2^2
beta2
#Since beta1 =0, symmetrical distribution
#Mean deviation about mean
integrand=function(x){3/4*(1-x)*x*(2-x)}
f1=integrate(integrand,lower=0,upper=1)
f1
integrand=function(x){3/4*(x-1)*x*(2-x)}
f2=integrate(integrand,lower=1,upper=2)
f2
#Mean deviation abt mean=f1+f2
M=0.1875+0.1875

#Harmonic Mean
integrand=function(x){3/4*(2-x)}
a=integrate(integrand,lower=0,upper=2)
a
H.M=3/2

#Median
#integrand=function(x){3/4*x*(2-x)}
#integrate(integrand,lower=0,upper=M)=1/2
#Solving above integral we get quadratic equation----->(M-1)*(M^2-2*M-2)=0
b=result(1,-2,-2)
b
#Other solution of b
b=1
#Since, M lying in [0,2]
sprintf("The median is: %f", b)




