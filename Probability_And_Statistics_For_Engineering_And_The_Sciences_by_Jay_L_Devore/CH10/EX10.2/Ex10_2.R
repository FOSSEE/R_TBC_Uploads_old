#Ex10.2, Page 397
#Answers may vary slightly due to rounding off of values

#From Ex10.1
Mean<-c(713.00,756.93,698.07,562.02)
SD<-c(46.55,40.34,37.20,39.87)
tot_mean<-682.50

I<-4
J<-6

#Numerator
v1<-I-1

#Denominator
v2<-I*(J-1)

alpha<-0.05

#H0:mu1=mu2=mu3=mu4
#Ha:at least two mean values will be different

#To find F critical value
F<-qf(p=1-alpha,df1=v1,df2=v2)
print(paste("Critical value F:",F))

#To find mean square for treatment
MSTr<-(J/(I-1))*sum((Mean-tot_mean)^2)
print(paste("MSTr:",MSTr))

#To find mean square for error
MSE<-(1/I)*sum(SD^2)
print(paste("MSE:",MSE))

#To find f value
f<-MSTr/MSE
print(paste("f:",f))

if(f>=F)  print(paste("H0 is rejected at significance level",alpha,"since f>=F"))  else  print(paste("H0 not rejected"))


