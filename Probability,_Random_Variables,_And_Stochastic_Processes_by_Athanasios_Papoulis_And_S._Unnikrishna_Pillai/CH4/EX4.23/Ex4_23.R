#page no. 109
#example 4-23

K=50:70  #number of calls is 50 to 70


probabilitySumation=sum((exp(-((K-60)^2)/80)/(4*sqrt(5*22/7))))
cat("probability using sumation formula ",probabilitySumation)

inte<-function(y){exp(-(y^2)/2)}                                                       #these two lines (10 and 11)  gives the defination of function G(x) 
Gx<-function(x){((1/(sqrt(2*3.14)))*integrate(inte,lower = 0,upper = x)[[1]])+0.5}     #which is given on page number 106 

probability=(2*Gx(sqrt(2.5)))-1
cat("probability using G(x) function (The Normal Approximation) is ",probability)

print("probability by both the methods are similar as lot of approximation comes into play in sumation formula")