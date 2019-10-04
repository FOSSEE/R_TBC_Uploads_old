#Ex3.36, Page 124
#Answers may slightly vary due to rounding off of values

N<-25
n<-10
M<-5

#P(X=2)=h(2,10,5,25)
x<-2
h1<-(choose(M,X)*choose(N-M,n-x))/choose(N,n)
print(paste("P(X=2)=",h1))

#P(X<=2)=P(X=0)+P(X=1)+P(X=2)
s<-0
for(i in 0:2){
  h2<-(choose(M,i)*choose(N-M,n-i))/choose(N,n)
  s<-s+h2
}
print(paste("P(X<=2)=",s))