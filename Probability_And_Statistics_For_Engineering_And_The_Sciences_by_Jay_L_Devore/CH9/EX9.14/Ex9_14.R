#Ex9.14, Page 385
#Answers may vary slightly due to rounding off of values

s1<-52.6
s2<-84.2
m<-28
n<-26

#H0: s1^2=s2^2
#Ha: s1^2<s2^2

alpha<-0.01
#To find F value
Falpha<-qf(alpha,df1=m-1,df2=n-1)
print(paste("F value:",Falpha))

f<-(s1^2)/(s2^2)
print(paste("f value:",f))

if(f<=Falpha) print(paste("H0 is rejected at significance level",alpha)) else print(paste("H0 is not rejected"))