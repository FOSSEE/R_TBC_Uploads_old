#Ex8.11, Page 324
#Answers may vary slightly due to rounding off of values

#H0:p=0.15
#Ha:p>0.15

p0<-0.15
q0<-1-p0
n<-91
n1<-16

#Check validity of test procedures 
if(n*p0>10 && n*q0>10)  print(paste("Large sample z test can be used")) else  print(paste("z test cannot be used"))

alpha<-0.1
zalpha<-qnorm(1-alpha)
print(paste("Rejection region: z>=",zalpha))

p<-n1/n
print(paste("p-cap:",p))

#To find z
z<-(p-p0)/(sqrt(p0*q0/n))
print(paste("Test statistic value:",z))

if(z<zalpha)print(paste("z=",z,"is not in the rejection region and hence, H0 cannot be rejected")) else print(paste("z is in the rejection region"))

