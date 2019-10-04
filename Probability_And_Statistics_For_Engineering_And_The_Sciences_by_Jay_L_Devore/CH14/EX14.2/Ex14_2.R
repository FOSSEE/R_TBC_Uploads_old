#Ex14.2, Page 599
#Answers may vary slightly due to rounding off of values

p<-9/16
n<-4
k<-5
df<-k-1
b<-c(NULL)
prob<-dbinom(0:4,n,p)
print(prob)

npi<-269*prob
print(npi)

Observed<-c(16,45,100,82,26)
Expected<-npi

df1<-data.frame(Observed,Expected)

#To find contribution to chi square from each cell
chi<-c(NULL)
for(i in 1:length(prob)){
  s<-((Observed[i]-Expected[i])^2)/Expected[i]
  chi[i]<-round(s,digits=3)
}
print(paste("Chi-square values:"))
print(chi)

sum<-sum(chi)
print(paste("Chi square value:",sum))

alpha<-0.01
#To find chi square value
chival<-qchisq(1-alpha,df)
print(paste("Critical value:",chival))

if(sum < chival) print(paste("H0 cannot be rejected")) else  print(paste("H0 can be rejected"))

