# Example : 6.4B   Chapter : 6.4     Page No: 336
# Eigen Values and Eigen vectors of given matrices
A3<-matrix(c(2,-1,0,-1,2,-1,0,-1,2),ncol=3)
eigenvalues<-eigen(A3)$values
x<-eigen(A3)$vectors
print("Eigen values of A3 are ")
print(eigenvalues)
print("Eigen vectors of A3 in normalised form are ")
print(x)
#to get eigen vectors in the textbook multiply normalised vectors by scalars
x[,1]<-x[,1]*(1/x[1,1])
x[,2]<-x[,2]*(sqrt(2)/x[1,2])
x[,3]<-x[,3]*(1/x[1,3])
print("Eigen vectors with respect to the above eigen values respectively are")
print(x)
B4<-matrix(c(1,-1,0,0,-1,2,-1,0,0,-1,2,-1,0,0,-1,1),ncol=4)
B4eigenvalues<-eigen(B4)$values
B4x<-eigen(B4)$vectors
print("Eigen values of B4 are ")
print(B4eigenvalues)
print("Eigen vectors of B4 in normalised form are")
print(B4x)
#to get eigen vectors in the textbook multiply normalised vectors by scalars
B4x[,1]<-B4x[,1]*(1/B4x[1,1])
B4x[,2]<-B4x[,2]*(1/B4x[1,2])
B4x[,3]<-B4x[,3]*(1/B4x[1,3])
B4x[,4]<-B4x[,4]*(1/B4x[1,4])
print("Eigen vectors with respect to the above eigen values respectively are")
print(B4x)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
