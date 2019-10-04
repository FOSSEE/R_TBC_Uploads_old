# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 4   Chapter : 6.1     Page No: 287
# Eigen values and eigen vectors of Singualar matrix

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
A<-matrix(c(1,2,2,4),ncol=2)
sol<-eigen(A)
print(sol)
lambda<-sol$values
print("The eigen values of the matrix are")
print(lambda)
I<-matrix(c(1,0,0,1),ncol=2)
E1<-A-lambda[1]*I
E1
rref(E1)
x1<-nullspacebasis(E1)
E2<-A-lambda[2]*I
rref(E2)
x2<-nullspacebasis(E2)
print("The eigen vectors of the matrix in normalized form are")
print(x1)
print(x2)
#to get eigen vectors in the textbook multiply normalised vectors by scalars
x1<-2*x1
x2<--1*x2
print("The eigen vectors of the matrix are ")
print(x2)
print(x1)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
