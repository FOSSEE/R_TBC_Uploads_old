#Ex8.4, Page 307
#Answers may vary slightly due to rounding off of values

#New rejection region x<=72
sdx<-1.8

#To find alpha=P(H0 rejected when true)=P(X<=72 when X follows normal dist)
mx<-75
alpha<-pnorm(72,mx,sdx)
print(paste("Alpha value:",alpha))
print(paste("Type I error probability is greater in the new rejection region"))

#To find beta=P(H0 not rejected)
mx<-c(72,70,67)                 #H0 is not rejected when it is false because mean= eg:72
for(i in mx){
  beta<-1-pnorm(72,i,sdx)
  print(paste("Beta(",i,"):",beta))
}
print(paste("Type II error probability is lower in the new rejection region"))