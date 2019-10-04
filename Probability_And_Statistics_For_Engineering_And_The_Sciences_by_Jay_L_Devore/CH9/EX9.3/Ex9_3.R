#Ex9.3, Page 350
#Answers may slightly vary due to rounding off of values

t<-5
t1<-0
s<-1.34
n<-qnorm(1-0.01/2)
beta<-pnorm(n-((t-t1)/s))-pnorm(-n-((t-t1)/s))
print(paste("Beta(5):",beta))
