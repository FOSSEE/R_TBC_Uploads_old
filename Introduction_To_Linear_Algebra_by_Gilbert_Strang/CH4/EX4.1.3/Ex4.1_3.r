# Example : 3   Chapter : 4.1     Page No: 197
# Rows of given matrix are perpendicular to the vector in nullspace
A<-matrix(c(1,5,3,2,4,7),nrow=2)
x<-c(1,1,-1)
for(i in 1:nrow(A)){
  dot_product<-sum(A[i,]*x)
  if(dot_product==0){
    print(paste("Row ",i,"is perpendicular to x"))
  }
}