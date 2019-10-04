#Example 3.32.2, Page 118
#Binomial distribution: n=15, p=0.2
#The answers may slightly vary due to rounding off of values

#Probability that exactly 8 copies fail
#P(X=8)=P(X<=8)-P(X<=7)
a<-0.999
b=pbinom(7,size=15,prob=0.2)
print(paste("The probability that exactly 8 copies fail the test", a-b))

