#Ex8.15, Page 330
#Answers may vary slightly due to rounding off of values

#H0: mu=15
#Ha: mu>1.5

z<-2.10

#To determine p-value
p<-1-pnorm(z)
print(paste("P-value:",p))

alpha<-c(0.1,0.05,0.01)
for(i in alpha){
  z1<-qnorm(1-i)
  if(z>=z1)
    print(paste("Reject H0 at significance level",i))
  else
    print(paste("Do not reject H0 at significance level",i))
}

#Using p-value approach
print(paste("Using p-value approach:"))
for(j in alpha){
  if(j>=p)
    print(paste("Reject H0 at significance level",j,"since",j,">=",p))
  else
    print(paste("Do not reject H0 at significance level",j,"since",j,"<",p))
}