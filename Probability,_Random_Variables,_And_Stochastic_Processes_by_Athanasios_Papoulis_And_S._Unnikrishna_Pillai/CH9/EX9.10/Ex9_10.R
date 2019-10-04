#page no. 386
#example 9-10

#part (a)

inte<-function(y){exp(-(y^2)/2)}                                                       #these two lines (6 and 7)  gives the defination of function G(x) 
Gx<-function(x){((1/(sqrt(2*3.14)))*integrate(inte,lower = 0,upper = x)[[1]])+0.5}     #which is given on page number 106 

p=Gx(-1/2)
print(p)

#part (b)

c=8*(1-exp(-0.6))   #variance
print(c)

p=2*Gx(1/1.9) - 1
print(p)