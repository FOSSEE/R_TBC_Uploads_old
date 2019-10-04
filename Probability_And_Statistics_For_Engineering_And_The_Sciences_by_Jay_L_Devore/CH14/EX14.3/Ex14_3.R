#Ex14.3, Page 600
#Answers may vary slightly due to rounding off of values

k<-24
df<-k-1
p<-1/24

#Cell counts
Observed<-c(52,73,89,88,68,47,58,47,48,53,47,34,21,31,40,24,37,31,47,34,36,44,78,59)
npi<-1186*p
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

alpha<-0.01
#To find chi square value
chival<-qchisq(1-alpha,df)
print(paste("Critical value:",chival))

if(sum < chival) print(paste("H0 cannot be rejected")) else  print(paste("H0 can be rejected"))


