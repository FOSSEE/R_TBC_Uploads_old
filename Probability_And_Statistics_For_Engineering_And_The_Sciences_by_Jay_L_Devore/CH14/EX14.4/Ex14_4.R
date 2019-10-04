#Ex14.4, Page 600
#Answers may vary slightly due to rounding off fo values

#Cell counts
Observed<-c(21,17,12,16,10,15,19,10)
p<-1/8
n<-120
k<-8
df<-k-1
npi<-n*p

Expected<-c(NULL)
for(i in 1:length(Observed)){
  Expected[i]<-npi
}
chi<-c(NULL)
for(i in 1:length(Observed)){
  s<-((Observed[i]-Expected[i])^2)/Expected[i]
  chi[i]<-round(s,digits=3)
}
sum<-sum(chi)
print(paste("Chi square value:",sum))

alpha<-0.1
#To find chi square value
chival<-qchisq(1-alpha,df)
print(paste("Critical value:",chival))

if(sum < chival) print(paste("H0 cannot be rejected")) else  print(paste("H0 can be rejected"))


