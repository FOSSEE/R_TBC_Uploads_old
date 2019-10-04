#Ex14.6, Page 604
#Answers may slightly due to rounding off of values

k<-3
m<-1
theta<-0.475
n<-500
npi1<-500*theta^2
npi2<-n*2*theta*(1-theta)
npi3<-n-npi1-npi2

Observed<-c(125,225,150)
Estimated_expected<-c(npi1,npi2,npi3)

chi<-c(NULL)
for(i in 1:length(Observed)){
  s<-((Observed[i]-Estimated_expected[i])^2)/Estimated_expected[i]
  chi[i]<-round(s,digits=3)
}
sum<-sum(chi)
print(paste("Chi square value:",sum))

alpha<-0.05
df<-k-m-1
#To find chi square value
chival<-qchisq(1-alpha,df)
print(paste("Critical value:",chival))

if(sum < chival) print(paste("H0 is rejected")) else  print(paste("H0 can be rejected"))
