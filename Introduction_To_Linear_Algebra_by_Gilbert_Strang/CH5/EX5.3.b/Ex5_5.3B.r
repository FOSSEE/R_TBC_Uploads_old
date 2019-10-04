# Example : 5.3B   Chapter : 5.3     Page No: 278
# Solve by crammers rule and inverse of the matrix

solve_by_crammersrule<-function(A,b){
  B1<-A
  B2<-A
  B3<-A
  B1[,1]<-b
  B2[,2]<-b
  B3[,3]<-b
  x1<-det(B1)/det(A)
  x2<-det(B2)/det(A)
  x3<-det(B3)/det(A)
  x<-c(x1,x2,x3)
  return(x)
}
inverse<-function(A){
  C<-matrix(c(1:9),ncol=3)
  for(i in 1:3){
    for(j in 1:3){
      if((i+j)%%2==0){
        x<-1
      }
      else{
        x<--1
      }
      C[i,j]<-x*det(A[-i,-j])
    }
  }
  CT<-t(C)
  A1<-(1/det(A))*CT
  return(A1)
}

A<-matrix(c(2,1,5,6,4,9,2,2,0),ncol=3)
b<-c(0,0,1)
x<-solve_by_crammersrule(A,b)
print("x is ")
print(x)
A1<-inverse(A)
print("Inverse of A is ")
print(A1)
print("A * inverse of A is Identity matrix")
I<-A%*%A1
print(I)
#The  answer may slightly vary due to  rounding off values