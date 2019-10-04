# Example : 6.1B   Chapter : 6.1     Page No: 292
# Eigen values and eigen vectors
solution<-function(A){
  sol<-eigen(A)
  lambda<-round(sol$values)
  x<-sol$vectors #these are normalised eigen vectors
  #to get eigen vectors in text book multiply normalised eigen vectors with scalars
  x[,1]<-x[,1]*(1/x[1,1])
  x[,2]<-round(x[,2]*(1/x[1,2]))
  x[,3]<-x[,3]*(1/x[1,3])
  print("The eigen values of the matrix are")
  print(lambda)
  print("The eigen vectors of the matrix respective to above eigen values are")
  print(x)
}

A<-matrix(c(1,-1,0,-1,2,-1,0,-1,1),ncol=3)
solution(A)
#The  answer may slightly vary due to  rounding off values
