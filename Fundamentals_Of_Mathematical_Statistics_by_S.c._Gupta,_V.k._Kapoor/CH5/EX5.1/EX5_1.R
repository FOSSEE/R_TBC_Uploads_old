#Page number--5.6
#Example number--5.1

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

#Values of X
x=c(0,1,2,3,4,5,6,7)
#Respective probabilities
px=c("0","k","2k","2k","3k","k^2","2k^2","7k^2+k")

data.frame(x,px)

#Part(i)
#We know that total probability =1
#k+2k+2k+3k+k^2+2k^2+7k^2+k=1-------------->We get 10*k^2+9*k-1=0
a=result(10,9,-1)
a
#Since, k cannot be negative
k=a[1]
k
#Substituting values of k in p(x), we get
px=c(0,k,2*k,2*k,3*k,k^2,2*k^2,7*k^2+k)

b=data.frame(x,px)
b

#Part (ii)
#Evaluate P(X<6)
PX6=sum(b[1:6,2])
sprintf("The probability X<6 is: %f",PX6)
sprintf("The probability X>=6 is: %f",1-PX6)
P0X5=sum(b[2:5,2])
sprintf("The probability 0<X<5 is: %f",P0X5)

#Part(iii)
#BY trail we get a=4

#Part (iv)
#Cummulative probability function
FX=c(sum(b[1,2]),sum(b[1:2,2]),sum(b[1:3,2]),sum(b[1:4,2]),sum(b[1:5,2]),sum(b[1:6,2]),sum(b[1:7,2]),sum(b[1:8,2]))
data.frame(x,FX)




