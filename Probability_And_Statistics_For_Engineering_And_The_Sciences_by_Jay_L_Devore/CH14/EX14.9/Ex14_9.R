#Ex14.9, Page 608
#Answers may vary slightly due to rounding off of values

k<-5
m<-1
mu<-2.10
n<-48
df<-k-m-1

Frequency<-c(9,9,10,14,6)

npi<-c(NULL)
for(i in 1:(k-1)){
  num<-(exp(1)^((-1)*mu))*(mu^(i-1))
  npi[i]<-n*(num/factorial(i-1))
  
}
npi[5]<-n-npi[1]-npi[2]-npi[3]-npi[4]
print(npi)

chi<-c(NULL)
for(i in 1:length(Frequency)){
  s<-((Frequency[i]-npi[i])^2)/npi[i]
  chi[i]<-round(s,digits=3)
}
sum<-sum(chi)
print(paste("Chi square value:",sum))

alpha<-0.05
#To find chi square value
chival<-qchisq(1-alpha,df)
print(paste("Critical value:",chival))

if(sum < chival) print(paste("H0 is not rejected since",sum,"<",chival)) else  print(paste("H0 can be rejected"))


