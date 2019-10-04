# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 3.6A   Chapter : 3.6     Page No: 190
# Four Fundamental Spaces of given matrix

library(pracma)
nullspacebasis <- function(A){
  R<-rref(A)
  m<-nrow(A)
  n<-ncol(A)
  pivotcol<-c() #vector to store the column numbers of pivot columns
  freecol<-c()  #vector to store the column numbers of free columns
  i<-1
  j<-1
  
  # to find which columns are pivot and which are free
  while(i<=m & j<=n){
    if(R[i,j]==1){
      pivotcol<-c(pivotcol,j)
      i<-i+1
      j<-j+1
    }
    else{
      j<-j+1
    }
  }
  y<-length(pivotcol)
  freecol<-c(1:n)
  freecol<-freecol[!freecol%in%pivotcol]
  x<-length(freecol)
  N<-c()
  #find the basis for null space based on Row reduced echelon form of given matrix
  if(y==n){
    return(N)
  }
  for(i in 1:x){
    temp<-c(1:n)
    for(j in 1:x){
      temp[freecol[j]]<-0
    }
    temp[freecol[i]]<-1
    temp[freecol[i]]
    for(j in 1:y){
      temp[pivotcol[j]]<-R[j,freecol[i]]*-1
    }
    N<-c(N,temp)
  }
  N<-matrix(N,nrow=n,ncol=x)
  #Basis for the nullspace of given matrix
  return(N)
}
l<-matrix(c(1,2,5,0,1,0,0,0,1),ncol=3)
u<-matrix(c(1,0,0,3,0,0,0,1,0,5,6,0),ncol=4)
A<-l%*%u
print("Row space Basis of A")
print(u[1,])
print(u[2,])
print("COlumn space Basis of A ")
print(l[,1])
print(l[,2])
print("Null space Basis of A")
N<-nullspacebasis(A)
print(N)
print("Null space Basis of A transpose")
NT<-nullspacebasis(t(A))
print(NT)
