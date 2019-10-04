# Example : 1   Chapter : 5.2     Page No: 255
# Determinant of matrices by multiplying pivots
A<-matrix(c(0,0,4,0,2,5,1,3,6),ncol=3)
P<-matrix(c(0,0,1,0,1,0,1,0,0),ncol=3)
PA<-P%*%A
print(PA)
detA<--1*PA[1,1]*PA[2,2]*PA[3,3]
print(detA)
det(A)
print("detA is the determinant of the given matrix")