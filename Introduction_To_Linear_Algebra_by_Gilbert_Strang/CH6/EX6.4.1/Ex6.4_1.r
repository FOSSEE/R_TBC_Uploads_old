# Example : 1   Chapter : 6.4     Page No: 331
# Eigen Values and Eigen vectors of A
A<-matrix(c(1,2,2,4),ncol=2)
lambda<-eigen(A)$values
x<-eigen(A)$vectors #These are Normalised eigen vectors
#to get eigen vectors in textbook
x[,1]<-x[,1]*(1/x[1,1])
x[,2]<-x[,2]*(2/x[1,2])
print("Eigen values and eigen vectors of respective eigen values of A")
print(lambda)
print(x)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
