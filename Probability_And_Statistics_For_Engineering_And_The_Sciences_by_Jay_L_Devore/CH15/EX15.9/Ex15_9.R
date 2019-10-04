#Ex15.9, Page 646
#Answers may vary slightly due to rounding off of values

data<-c(309.2,309.7,311.0,316.8,326.5,349.8,409.5,331.0,347.2,348.9,361.0,381.7,402.1,404.5,351.0,357.1,366.2,367.3,382.0,392.4,409.9,346.7,362.6,384.2,410.6,433.1,452.9,461.4,407.4,410.7,419.9,441.2,441.8,465.8,473.4)
m1<-matrix(data,nrow=5,dimnames=list(c("4''","6''","8''","10''","12''")),byrow=TRUE)
print(m1)

N<-length(data)

#To find ranks of respective data
r1<-matrix(rank(m1),nrow=5)
cat("Ranks of data\n")
print(r1)

I<-nrow(r1)
J<-ncol(r1)

#To find rank sum and mean with respect to each plate length type
ri<-c(NULL)
ribar<-c(NULL)
for(i in 1:nrow(r1)){
  ri[i]<-sum(r1[i,])
  ribar[i]<-round(mean(r1[i,]),digits=2)
}
df1<-data.frame(ri,ribar)
cat("Rank sum and mean\n")
print(df1)

#To find k value
sum<-0
for(j in 1:nrow(r1)){
  sum<-sum+(ri[j])^2/J
}
k<-(12/(N*(N+1)))*sum-3*(N+1)
print(paste("k value:",k))

#To find chi-square value
alpha<-0.99
chival<-qchisq(alpha,df=I-1)
print(paste("Chi-squared value:",chival))

if(k>=chival) print(paste("H0 is not rejected since",k,">=",chival))  else  print(paste("H0 is rejected"))