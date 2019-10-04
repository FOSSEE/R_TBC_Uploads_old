#page no. 109
#example 4-22

n=10000      #number of times the coin is tossed (given)
p=q=0.5      #probability of getting head(or tail) in one toss
k1=4900
k2=5100
x2=(k2-n*p)/sqrt(n*p*q)
print(x2)
x1=(k1-n*p)/sqrt(n*p*q)
print(x1)

inte<-function(y){exp(-(y^2)/2)}                                                       #these two lines (13 and 14)  gives the defination of function G(x) 
Gx<-function(x){((1/(sqrt(2*3.14)))*integrate(inte,lower = 0,upper = x)[[1]])+0.5}     #which is given on page number 106 

probability=(2*Gx(2))-1
cat("probability equals ",probability)

#answer in the book is 0.9545  with is by apprimation of different values 