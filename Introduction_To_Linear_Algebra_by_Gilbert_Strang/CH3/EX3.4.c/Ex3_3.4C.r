# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 3.4C   Chapter : 3.4     Page No: 162
# Find the Complete solution of the given system

library(pracma)
completesolution <- function(A,b){
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
    N<-c()
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
  s<-N
  Ab<-cbind(A,b)
  Rd<-rref(Ab)
  temp<-Rd[,n+1]
  p<-c(1:n)
  for(i in 1:length(freecol)){
    p[freecol[i]]<-0
  }
  for(i in 1:length(pivotcol)){
    p[pivotcol[i]]<-temp[i]
  }
  print("The special solution is")
  print(s)
  print("The particular solution is")
  print(p)
  print("Complete solution = particular solution + Special solution")
}
A<-matrix(c(1,2,4,2,4,8,1,4,6,0,8,8),nrow=3)
b<-c(4,2,10)
completesolution(A,b)