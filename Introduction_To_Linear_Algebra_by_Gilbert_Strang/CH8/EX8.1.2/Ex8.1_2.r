# Example : 2   Chapter : 8.1     Page No: 414
# Find movements , tensions, elongations of spring
K1<-matrix(c(2,-1,0,-1,2,-1,0,-1,1),ncol=3)
K11<-solve(K1)
f<-c(1,1,1)
u<-K11%*%f
print("Movements are given by mg/c * u and u  is")
print(u)
A<-matrix(c(1,-1,0,0,1,-1,0,0,1),ncol=3)
e<-A%*%u
print("Elongations are given by mg/c * e and e is")
print(e)
y<-solve(t(A))%*%f
print("Tensions are given by mg * y and y is")
print(y)