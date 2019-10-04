#Ex10.3, Page 397
#Answers may vary slightly due to rounding off of values

Treatment<-c(1,2,3,4,5)
Sample_mean<-c(10.5,14.8,15.7,16.0,21.6)
Sample_sd<-c(4.5,6.8,6.5,6.7,6.0)

#To find total mean of mean values
tot_mean<-mean(Sample_mean)
print(paste("Grand mean:",tot_mean))

#H0: mu1=mu2=mu3=mu4=mu5
#Ha: at least two of the mean values are different

I<-5
J<-10
alpha<-0.01

#Numerator
v1<-I-1

#Denominator
v2<-I*(J-1)

#To find F value
F<-qf(1-alpha,v1,v2)
print(paste("Critical value F:",F))

#To find mean square for treatment
s<-Sample_mean-tot_mean
MSTr<-(J/(I-1))*sum(s^2)
print(paste("MSTr:",MSTr))

#To find mean square for error
MSE<-mean(Sample_sd^2)
print(paste("MSE:",MSE))

#To find f value
f<-MSTr/MSE
print(paste("f:",f))

if(f>=F)  print(paste("H0 is rejected at significance level",alpha,"since f>=F"))  else  print(paste("H0 not rejected"))



