# Example : 1   Chapter : 8.2     Page No: 427
# Find the currents
A<-matrix(c(-1,-1,0,-1,0,0,1,0,-1,0,-1,0,0,1,1,0,0,-1,0,0,0,1,1,1),ncol=4)
AT<-t(A)
Laplacian_matrix<-AT%*%A
Laplacian_matrix<-Laplacian_matrix[-4,-4]
b<-c(1,0,0)
x<-solve(Laplacian_matrix,b)
x<-c(x,0)
print("Voltages are given by S * ")
print(x)
print("S is source")
y<--1*A%*%x
print("Currents are given by S * ")
print(y)