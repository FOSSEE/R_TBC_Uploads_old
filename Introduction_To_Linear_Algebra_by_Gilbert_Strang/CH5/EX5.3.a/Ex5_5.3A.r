# Example : 5.3A   Chapter : 5.3     Page No: 277
# Nullspace of matrix as transpose of Cofactor matrix
nullspacebasis<-function(A){
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
  C<-t(C)
  return(C)
}

A1<-matrix(c(1,2,2,4,3,2,7,9,8),ncol=3)
N1<-nullspacebasis(A1)
print("The null space basis are given by columns of transpose of cofactor matrix")
print("Null space of A1 is")
print(N1)
A2<-matrix(c(1,1,1,1,1,1,2,1,1),ncol=3)
N2<-nullspacebasis(A2)
print("Null space of A2 is ")
print(N2)