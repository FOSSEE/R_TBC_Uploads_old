#Ex14.1, Page 597
#Answers may vary slightly due to rounding off of value

p<-c(9/16,3/16,3/16,1/16)
ni<-c(926,288,293,104)
n<-1611
k<-4
df<-k-1

npi<-round(n*p,digits=1)
df1<-data.frame(ni,npi)

#To find contribution to chi square from each cell
chi<-c(NULL)
for(i in 1:length(ni)){
  s<-((ni[i]-npi[i])^2)/npi[i]
  chi[i]<-s
}
print(paste("Chi-square values:"))
print(chi)

sum<-sum(chi)
print(paste("Chi square value:",sum))

alpha<-0.1
#To find chi square value
chival<-qchisq(1-alpha,df)
print(paste("Critical value:",chival))

if(sum < chival) print(paste("H0 cannot be rejected")) else  print(paste("H0 can be rejected"))
