# Example : 7.3A   Chapter : 7.3     Page No: 405
# leftinverse,rightinverse,Pseduoinverse of given matrices
A1<-matrix(c(2,2),ncol=1)
A2<-matrix(c(2,2),ncol=2)
A3<-matrix(c(2,2,2,2),ncol=2)
A1T<-t(A1)
A2T<-t(A2)
A1inv<-solve(A1T%*%A1)%*%A1T
print("Left inverse of A1")
print(A1inv)
print(A1inv%*%A1)
A2inv<-A2T%*%solve(A2%*%A2T)
print("right inverse of A2")
print(A2inv)
print(A2%*%A2inv)

#The answers given in the text book is wrong it is 1/8 ..  not 1/sqrt(8)
V1<-svd(A3)$v
U1T<-t(svd(A3)$u)
d<-svd(A3)$d
sigma1<-matrix(c(1/d[1],0,0,0),ncol=2)
A3inv<-2*(V1%*%sigma1%*%U1T)
print("The Pseduo inverse of the given matrix")
print(A3inv)