#Ex4.21, Page 166
#Answers may slightly vary due to rounding off of values

#E(X)=6MPa=1/lambda
e<-6
lambda<-1/e
#Probability that stress range is at most 10MPa
p<-pexp(10,lambda)
print(paste("P(stress range is at most 10MPa)=",p))

#Probability that stress range is between 5 and 10MPa
q<-pexp(10,lambda)-pexp(5,lambda)
print(paste("P(stress range is between 5 and 10MPa)=",q))

