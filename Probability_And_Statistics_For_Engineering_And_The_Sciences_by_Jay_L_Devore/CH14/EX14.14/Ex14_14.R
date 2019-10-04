#Ex14.14, Page 617
#Answers may vary slightly due to rounding off of values

O<-c(24,15,17,52,73,80,58,86,36)
E<-c(17.02,22.10,16.89,62.29,80.88,61.83,54.69,71.02,54.29)

print(paste("Observed pricing policy"))
Observed<-matrix(data=O,nrow=3,ncol=3,byrow=TRUE)
rownames(Observed)<-c("Substandard","Standard","Modern")
colnames(Observed)<-c("Aggressive","Neutral","Nonaggressive")
print(Observed)

print(paste("Expected pricing policy"))
Expected<-matrix(data=E,nrow=3,ncol=3,byrow=TRUE)
rownames(Expected)<-c("Substandard","Standard","Modern")
colnames(Expected)<-c("Aggressive","Neutral","Nonaggressive")
print(Expected)

chi<-c(NULL)
for(i in 1:length(Observed)){
    chi[i]<-(Observed[i]-Expected[i])^2/(Expected[i])
}
sum<-sum(chi)
print(paste("Chi square value:",sum))

alpha<-0.01
#To find chi square value
chival<-qchisq(1-alpha,df=4)
print(paste("Critical value (Chi square):",chival))

