#Ex3.38, Page 126
#Answers may slightly vary due to rounding off of values

#P(X=10)=nb(10;5,0.2)
prob1=dnbinom(0:10,size=5,prob=0.2)
print(paste("P(X=10)=",max(prob1)))

#P(X<=10)
s<-pnbinom(0:10,size=5,prob=0.2)
print(paste("P(X<=10)=",max(s)))