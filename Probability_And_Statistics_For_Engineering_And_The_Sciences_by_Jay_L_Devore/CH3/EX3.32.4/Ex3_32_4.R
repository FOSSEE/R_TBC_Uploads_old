#Example 3.32.4, Page 119
#Binomial distribution: n=15, p=0.2
#The answers may slightly vary due to rounding off of values

#Probability that between 4 to 7 copies fail
#P(4<=X<=7)=P(X=4)+P(X=5)+P(X=6)+P(X=7)
d=pbinom(7,15,0.2)-pbinom(3,15,0.2)
print(paste("The probability that between 4 to 7 copies fail is", d))



