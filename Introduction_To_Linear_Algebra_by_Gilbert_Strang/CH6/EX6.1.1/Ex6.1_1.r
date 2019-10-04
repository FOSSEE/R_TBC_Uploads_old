# Example : 1   Chapter : 6.1     Page No: 284
# Eigen values and eigen vectors
A<-matrix(c(0.8,0.2,0.3,0.7),ncol=2)
sol<-eigen(A)
lambda<-sol$values
x<-sol$vectors
print("The eigen values of the matrix are")
print(lambda)
print("The eigen vectors of the matrix in normalised form are")
print(x)
#to get eigen vectors in the textbook multiply normalised vectors by scalars
x[,1]<-x[,1]*(0.6/x[1,1])
x[,2]<-x[,2]*(1/x[1,2])
print("Eigen vectors with respect to the above eigen values respectively are")
print(x)
print(A%*%x)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
