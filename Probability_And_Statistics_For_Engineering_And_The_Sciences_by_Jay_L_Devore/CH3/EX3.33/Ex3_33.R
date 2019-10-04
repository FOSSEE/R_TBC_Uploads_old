#Ex3.33, Page 119
#Answers may vary slightly due to rounding off of values

#n=20
#P(X>=5) when p=0.10
p1<-1-pbinom(4,size=20,prob=0.1)
print(paste("P(X>=5 when p=.1)=",p1))

#P(X<=4) when p=0.2
p2<-pbinom(4,size=20,prob=0.2)
print(paste("P(X<=4 when p=.2)=",p2))