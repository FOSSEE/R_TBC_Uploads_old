# Example : 4.2B   Chapter : 4.2     Page No: 213
# Find best Possible solution

solution<-function(A,b){
  ATA<-t(A)%*%A
  ATb<-t(A)%*%b
  x<-solve(ATA,ATb)
  return(x)
}

A<-matrix(c(1,1,1),ncol=1)
b<-matrix(c(70,80,120),ncol=1)
x<-solution(A,b)
print("The best possible solution is ")
print(x)