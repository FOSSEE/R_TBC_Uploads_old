# Example : 6.3B   Chapter : 6.3     Page No: 322
# Eigen Values and Eigen vectors of A
A<-matrix(c(-2,1,0,1,-2,1,0,1,-2),ncol=3)
eigenvalues<-eigen(A)$values
x<-eigen(A)$vectors
print("Eigen values of A are ")
print(eigenvalues)
print("Eigen vectors of A in normalised form")
print(x)
#to get eigen vectors in the textbook multiply normalised vectors by scalars
x[,1]<-x[,1]*(1/x[1,1])
x[,2]<-x[,2]*(1/x[1,2])
x[,3]<-x[,3]*(1/x[1,3])
print("Eigen vectors with respect to the above eigen values respectively are")
print(x)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
