#Page number--8.9
#Example number--8.10

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

#Probability Distribution
#P=choose(6,x)*(p)^x*(1-p)^6-x
#9*P(X=4)=P(X=2)
#Solving above equation
#We get quadratic equation---->8*p^2+2*p-1=0
a=result(8,2,-1)
a
#Probability cannot be negative
sprintf("p : %f",a[1])
