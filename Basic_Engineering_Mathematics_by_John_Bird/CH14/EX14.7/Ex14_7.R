#page no. 126
#problem 7

#function:

# Constructing Quadratic Formula
roots <- function(a,b,c){
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

#given: quadratic eq.
#       x^2-5x+6 = 0

a = 1
b = -5
c = 6
x12 = roots(a,b,c) #roots of quadratic equation
 print(x12)