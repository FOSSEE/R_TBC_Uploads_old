#Ex14.10, Page 608
#Answers may vary slightly from textbook values

data<-c(204,108,140,152,158,129,175,146,157,174,192,194,144,152,135,223,145,231,115,131,129,142,114,173,226,155,166,220,180,172,143,148,171,143,124,158,144,108,189,136,136,197,131,95,139,181,165,142,162)

n<-length(data)
mu_cap<-round(mean(data),digits=2)
sigma_cap<-round(sqrt((n-1)*(sd(data)^2)/n),digits=2)
print(paste("mu_cap:",mu_cap))
print(paste("sigma_cap:",sigma_cap))

#To find estimated expected counts
interval<-c(-Inf,117.9,132.9,144.6,155.4,167.1,182.1,Inf)
p<-c(NULL)
npi<-c(NULL)
for(i in 1:length(interval)-1){
  p[i]<-pnorm(interval[i+1],mean=mu_cap,sd=sigma_cap)-pnorm(interval[i],mean=mu_cap,sd=sigma_cap)
  npi[i]<-n*p[i]
}

Cell<-c("(-Inf,117.9)","(117.9,132.9)","(132.9,144.6)","(144.6,155.4)","(155.4,167.1)","(167.1,182.1)","(182.1,Inf)")
Observed<-c(5,5,11,6,6,7,9)
Estimated_expected<-npi
data1<-data.frame(Cell,Observed,Estimated_expected)
print(data1)

#To find chi-squared values
alpha<-0.95
df1<-length(npi)-1
m<-2
q1<-qchisq(alpha,df=df1)
print(paste("X^2(0.05,k-1):",q1))

df2<-df1-m
q2<-qchisq(alpha,df=df2)
print(paste("X^2(0.05,k-1-m):",q2))



                                