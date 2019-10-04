#Ex8.14, Page 329
#Answers may vary slightly due to rounding off of values

#H0: mu=2.0
#Ha: mu>2.0

mu0<-2
xbar<-2.06
sd<-0.141
n<-51

#To find z value
z<-(xbar-mu0)/(sd/sqrt(n))
print(paste("Test statistic value:",z))

#To find P-value=P(Z>=z when mu=2.0)
p<-1-pnorm(z)
print(paste("P-value:",p))

alpha<-c(0.01,0.001)
for(i in alpha){
      if(p<=i)
        print(paste("H0 rejected when significance level is at",i))
      else 
        print(paste("H0 not rejected when significance level is at",i))
}