#Example : 1   Chapter : 2.1  Pageno : 37
#Multiplication by rows and cols dotproduct.
multiply<-function(A,x){
  b<-c()
  for(i in 1:3){
    b<-c(b,sum(A[i,]*x[,1]))
  }
  b<-matrix(b,ncol=1)
  print(paste("Multiplying matrices by dotproduct of rows and cols"))
  print(A)
  print("*")
  print(x)
  print("=")
  print(b)
}


I<-matrix(c(1,0,0,0,1,0,0,0,1),ncol=3,byrow=T)
x<-matrix(c(4,5,6),ncol=1)
A=matrix(c(1,1,1,0,0,0,0,0,0),ncol=3)
multiply(A,x)
A<-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3,ncol=3,byrow=T)
multiply(A,x)




