#Example 3.7, Page 97
#Storing all probabilities in an array
prob<-c(0.05,0.1,0.15,0.25,0.20,0.15,0.10)
P<-array(c(prob),dim=c(1,7,1))

#P(X<=2)=P(X=0)+P(X=1)+P(X=2)
p1<-P[1,1,1]+P[1,2,1]+P[1,3,1]
print(paste("P(X<=2) =",p1))

#P(X>=3)=1-P(X<=2)
p2<-1-(P[1,1,1]+P[1,2,1]+P[1,3,1])
print(paste("P(X>=3) =",p2))

#P(2<=X<=5)=P(X=2,3,4 or 5)
p3<-P[1,3,1]+P[1,4,1]+P[1,5,1]+P[1,6,1]
print(paste("P(2<=X<=5) =",p3))

#P(2<X<5)=P(X=3,4)
p4<-P[1,4,1]+P[1,5,1]
print(paste("P(2<X<5) =",p4))


