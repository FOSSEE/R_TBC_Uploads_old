#Ex14.5, Page 603

Type<-c("Observed")
M<-c(125)
MN<-c(225)
N<-c(150)
print(paste("Observed counts:"))
df<-data.frame(Type,M,MN,N)
print(df)

n<-500

n1<-M
n2<-MN
theta<-(2*n1+n2)/(2*n)
print(paste("Resulting estimator:",theta))