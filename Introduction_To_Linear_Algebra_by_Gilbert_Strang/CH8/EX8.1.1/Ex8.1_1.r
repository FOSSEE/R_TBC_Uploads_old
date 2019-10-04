# Example : 1   Chapter : 8.1     Page No: 413
# Find movements , tensions, elongations of spring
K<-matrix(c(2,-1,0,-1,2,-1,0,-1,2),ncol=3)
K1<-solve(K)
f<-c(1,1,1)#since all mi=m
u<-K1%*%f
print("Movements are given by mg/c * u and u  is")
print(u)
A<-matrix(c(1,-1,0,0,0,1,-1,0,0,0,1,-1),ncol=3)
e<-A%*%u
print("Elongations are given by mg/c * e and e is")
print(e)
print("Tensions are given by mg * e and e is")
print(e)