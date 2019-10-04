# Example : 1    Chapter  :  2.3   page no  :  57
#Matrix multiplication as dotproduct of row and column
A<-matrix(c(3,4,5,6),nrow=2,ncol=2,byrow=T)
x<-c(2,1)
B<-A%*%x
B
Ax<-c()
for(i in 1:2){
  Ax<-c(Ax,sum(A[i,]*x))
}
Ax<-matrix(Ax,ncol=1)
Ax