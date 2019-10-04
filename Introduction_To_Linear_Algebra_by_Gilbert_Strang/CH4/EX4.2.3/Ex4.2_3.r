# Example : 3   Chapter : 4.2     Page No: 211
# Find the best possible solution, projection vector and projection matrix

solution<-function(A,b){
  ATA<-t(A)%*%A
  b<-matrix(c(b),ncol=1)
  ATb<-t(A)%*%b
  xhat<-solve(ATA,ATb)
  p<-A%*%xhat
  e<-b-p
  ATA1<-solve(ATA)
  P<-A%*%ATA1
  P<-P%*%t(A)
  print("The best possible solution is ")
  print(xhat)
  print("The projection vector is ")
  print(p)
  print("The error vector e is")
  print(e)
  print("The projection matrix is ")
  print(P)
}

A<-matrix(c(1,1,1,0,1,2),ncol=2)
b<-c(6,0,0)
solution(A,b)
#The  answer may slightly vary due to  rounding off values