# Example : 2   Chapter : 4.3     Page No: 222
# Fit a straight line
solution<-function(A,b){
  ATA<-t(A)%*%A
  ATb<-t(A)%*%b
  xhat<-solve(ATA,ATb)
  return(xhat)
}
fit_line<-function(D){
  num_of_points<-nrow(D)
  t<-c()
  for(i in 1:num_of_points){
    t<-c(t,1)
  }
  t<-c(t,D[,1])
  A<-matrix(c(t),ncol=2)
  b<-D[,2]
  b<-matrix(c(b),ncol=1)
  x<-solution(A,b)# The system has no solution, we need to find the best solution 
  return(x)
}
Data<-matrix(c(-2,0,2,1,2,4),ncol=2)
x<-fit_line(Data)
C<-x[1]
D<-x[2]
print(paste("The best straight line is b= ",C," + ",D,"t"))
#The  answer may slightly vary due to  rounding off values.