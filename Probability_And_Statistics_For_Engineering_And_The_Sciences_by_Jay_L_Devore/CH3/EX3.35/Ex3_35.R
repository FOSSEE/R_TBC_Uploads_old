#Ex3.35, Page 123
#Answers may slightly vary due to rounding off of values

N<-20
n<-5
M<-12

#P(X=2)=h(2,5,12,20)
x<-2
h<-(choose(M,x)*choose(N-M,n-x))/choose(N,n)
print(paste("h(2;5,12,20)=",h))