#Ex3.31, Page 118
#Answers may slightly vary due to rounding off of values

#n=6, p=0.5

#P(X=3)
print(paste("P(X=3)=",dbinom(3,size=6,prob=0.5)))

#Probability that at least 3 three prefer S is
print(paste("P(X>=3)=",pbinom(3,size=6,prob=0.5)))

#Probability that at most one prefers S is
print(paste("P(X<=1)=",pbinom(1,size=6,prob=0.5)))
