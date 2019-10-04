# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 2   Chapter : 3.2     Page No: 132
# Find the Nullspace of given singular matrix

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
A<-matrix(c(1,3,2,6),nrow=2,ncol=2)
N<-nullspacebasis(A)
print("Basis vectors for nullspace of given matrix is")
N