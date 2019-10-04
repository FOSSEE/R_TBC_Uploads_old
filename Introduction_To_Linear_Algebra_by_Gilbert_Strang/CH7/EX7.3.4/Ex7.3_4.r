# Example : 4   Chapter : 7.3     Page No: 404
# Pseduoinverse of matrix
A<-matrix(c(2,1,2,1),ncol=2)
V<-svd(A)$v
UT<-t(svd(A)$u)
d<-svd(A)$d
sigma1<-matrix(c(1/d[1],0,0,0),ncol=2)
A1<-V%*%sigma1%*%UT
print("The Pseduo inverse of the given matrix")
print(A1)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation method followed.
