# Example : 3   Chapter : 6.6     Page No: 357
# Pascals matrix and its inverse are similar
A<-matrix(c(1,1,1,1,0,1,2,3,0,0,1,3,0,0,0,1),ncol=4)
A1<-solve(A)
Aev<-eigen(A)$values
A1ev<-eigen(A1)$values
print("Both pascal matrix and its inverse have same eigen values")
print(Aev)
print(A1ev)