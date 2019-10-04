#Ex8.13, Page 327

#H0: p=0.9
#Ha: p<0.9
#Rejection region: x<=15

n<-20
pdash<-0.8
alpha<-0.05

#To find beta=P(H0 not rejected when X follows binomial dist)
beta<-1-pbinom(15,n,pdash)
print(paste("Beta(",pdash,")=",round(beta,digits=2)))

print(paste(ceiling(beta*100),"% of all samples causes H0 to be rejected incorrectly when p=",pdash))