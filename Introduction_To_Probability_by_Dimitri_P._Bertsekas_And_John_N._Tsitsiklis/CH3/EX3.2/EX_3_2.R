#EX_3_2
#page 5
#Piecewise Constant PDF
Fx<-numeric(11)
f <- function(c1)c1#representing the function of constant variable to integrate
f2<-function(c2)c2
cum<-integrate(f,15,20)
p_sunnyday<-cum$value/17.5#to calculate the probabilty of sunny day
p_sunnyday
cum2<-integrate(f2,20,25)
p_rainyday<-(cum2$value/22.5)#to calcualte the probability of rainy day 
p_rainyday
c1<-(2/3)/p_sunnyday#calcuLting the c1 
c2<-(1/3)/p_rainyday#calculating the c2
fx<-c(c1,c2)#sample space of fx(x)
c1
c2
fx
