#Example 3.32.1, Page 118
#Binomial distribution: n=15, p=2
#The answers may slightly vary due to rounding off of values

#Probability that at most 8 copies fail the test
#P(X<=8)
a=pbinom(8,size=15,prob=0.2)
print(paste("The probability that at most 8 copies fail the test is", a))





