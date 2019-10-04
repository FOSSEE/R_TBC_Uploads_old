#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Applications to Image Processing and Statistics 
#Page No.237 / 7-17
#Prob 7
#7.5.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

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

a <- result(1,-102,647)
print(a)
print('Two possible choices for new variable are:')
print('y1=-.95x1+.32x2 and')
print('y1=.95x1-.32x2')
print('variance of y1 is')
print(a[1])
print('total variance is')
print(a[1]+a[2])
print('the new variable y1 explains about')
print(a[1]/(a[1]+a[2]))
print('% of the variance in the data')