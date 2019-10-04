# Example : 1   Chapter : 5.3     Page No: 269
# Cramers rule for solving system of equations
A<-matrix(c(3,5,4,6),ncol=2)
b<-c(2,4)
B1<-A
B1[,1]<-b
B2<-A
B2[,2]<-b
x1<-det(B1)/det(A)
x2<-det(B2)/det(A)
print("SOlution is ")
print(x1)
print(x2)
