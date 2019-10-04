# Example : 6.1A   Chapter : 6.1     Page No: 291
# Eigen values and eigen vectors
solution<-function(A){
  sol<-eigen(A)
  lambda<-sol$values
  x<-sol$vectors #these are normalised eigen vectors
  #to get the eigen vectors as in texxt book multiply these normalised vectors with scalars
  x[,1]<-x[,1]*(1/x[1,1])
  x[,2]<-x[,2]*(1/x[1,2])
  print("The eigen values of the matrix are")
  print(lambda)
  print("The eigen vecotrs of the matrix respective to above eigen values are")
  print(x)
}

A<-matrix(c(2,-1,-1,2),ncol=2)
print("For A")
solution(A)
A2<-A%*%A
print("For square of A")
solution(A2)
A1<-solve(A)
print("For inverse of A")
solution(A1)
I<-matrix(c(1,0,0,1),ncol=2)
A4I<-A+4*I
print("For A+4I")
solution(A4I)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
