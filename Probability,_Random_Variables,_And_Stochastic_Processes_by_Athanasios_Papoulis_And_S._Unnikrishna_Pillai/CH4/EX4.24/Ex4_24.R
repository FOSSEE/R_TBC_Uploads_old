#page no. 109
#example 4-23

p=q=0.5   #(given)
e=0.05


    #taking n=100
n1=100
x1=e*sqrt(n1/(p*q))

inte<-function(y){exp(-(y^2)/2)}                                                       #these two lines  gives the defination of function G(x) 
Gx<-function(x){((1/(sqrt(2*3.14)))*integrate(inte,lower = 0,upper = x)[[1]])+0.5}     #which is given on page number 106 

probability1=(2*Gx(x1))-1


#taking n=400
n2=400
x2=e*sqrt(n2/(p*q))

inte<-function(y){exp(-(y^2)/2)}                                                       #these two lines  gives the defination of function G(x) 
Gx<-function(x){((1/(sqrt(2*3.14)))*integrate(inte,lower = 0,upper = x)[[1]])+0.5}     #which is given on page number 106 

probability2=(2*Gx(x2))-1

#taking n=900
n3=900
x3=e*sqrt(n3/(p*q))

inte<-function(y){exp(-(y^2)/2)}                                                       #these two lines  gives the defination of function G(x) 
Gx<-function(x){((1/(sqrt(2*3.14)))*integrate(inte,lower = 0,upper = x)[[1]])+0.5}     #which is given on page number 106 

probability3=(2*Gx(x3))-1




table <- matrix(c(n1,n2,n3,x1,x2,x3,probability1,probability2,probability3),ncol=3,byrow=TRUE)
#colnames(table) <- c("n")
rownames(table) <- c("n","0.1sqrt(n)","2G(0.1sqrt(n))-1")
table<-as.table(table)

print("table shows the probability 2G(0.1sqrt(n))-1 that k is between 0.45n and 0.55n for various values of n ")

table
