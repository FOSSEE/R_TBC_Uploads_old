#Ex15.10, Page 647
#Answers may vary slightly due to rounding off of values

data<-c(23.1,57.6,10.5,23.6,11.9,54.6,21.0,20.3,22.7,53.2,9.7,19.6,13.8,47.1,13.6,23.6,22.5,53.7,10.8,21.1,13.7,39.2,13.7,16.3,22.6,53.1,8.3,21.6,13.3,37.0,14.8,14.8)
m1<-matrix(data,nrow=4,dimnames=list(c("Fear","Happiness","Depression","Calmness"),c("1","2","3","4","5","6","7","8")),byrow=TRUE)
print(m1)

#To find ranks of respective data
r1<-rank(m1[,1])
r2<-rank(m1[,2])
r3<-rank(m1[,3])
r4<-rank(m1[,4])
r5<-rank(m1[,5])
r6<-rank(m1[,6])
r7<-rank(m1[,7])
r8<-rank(m1[,8])
data1<-data.frame(r1,r2,r3,r4,r5,r6,r7,r8)
cat("\nRanks of data:\n")
print(data1)

I<-nrow(data1)
J<-ncol(data1)

#To find rank sum and mean with respect to each plate length type
ri<-c(NULL)
ri2<-c(NULL)
for(i in 1:nrow(data1)){
  ri[i]<-sum(data1[i,])
  ri2[i]<-(ri[i])^2
}
df1<-data.frame(ri,ri2)
print(df1)

#To find test statistic
Fr<-(12/(I*J*(I+1)))*sum(ri2)-3*J*(I+1)
print(paste("Test statistic value:",Fr))

#To find chi-square value
alpha<-0.95
chival<-qchisq(alpha,df=I-1)
print(paste("Chi-squared value:",chival))

if(Fr<chival) print(paste("H0 is not rejected since",Fr,"<",chival))  else  print(paste("H0 is rejected"))

