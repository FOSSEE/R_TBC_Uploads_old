# Example : 2.3C   Chapter : 2.3   Pageno  :  62
# Multiplying Matrices in two different ways
A<-matrix(c(3,1,2,4,5,0),ncol=2)
B<-matrix(c(2,1,4,1),ncol=2)
AB<-A%*%B
print(AB)
#Multiplying matrices A and B as Rows of A times columns of B as dot product
for(r in 1:dim(A)[1]){
  for(c in 1:dim(B)[2]){
    AB[r,c]<-sum(A[r,]*B[,c])
  }
}
print(AB)
#Multiplying Matrices A and B as Columns of A times rows of B
AB1<-matrix(A[,1],ncol=1)%*%matrix(B[1,],nrow=1)
AB2<-matrix(A[,2],ncol=1)%*%matrix(B[2,],nrow=1)
AB<-AB1+AB2
print(AB)