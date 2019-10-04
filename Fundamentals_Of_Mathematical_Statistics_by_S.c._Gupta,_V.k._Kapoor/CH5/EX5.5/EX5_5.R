#Page number--5.13
#Example number--5.5

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

#Part (i)
#Checking f(x) is p.d.f or not
integrand=function(x) {6*x*(1-x)}
a=integrate(integrand,lower=0,upper=1)
a
sprintf("f(x) is p.d.f")

#Part (ii)
#Determining b
#integrand=function(x) {6*x*(1-x)}
#integrate(integrand,lower=0,upper=b) = integrate(integrand,lower=b,upper=1)
#Solving above integral we get quadratic equation----->(2*b-1)(2*b^2-2*b-1)=0
b=result(2,-2,-1)
b
#Other solution of b
b=1/2
#Since, probability cannot be negative or greater than 1
sprintf("The onle real value of b: %f", b)




