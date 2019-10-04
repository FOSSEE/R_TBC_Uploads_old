# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 1   Chapter : 3.6     Page No: 188
# Dimensions and rank of matrix
library(pracma)
solution<-function(A){
  print(paste("Number of rows , m=",nrow(A)))
  print(paste("Number of columns,n=",ncol(A)))
  print(paste("Rank of the given matrix",Rank(A)))
}
A<-matrix(c(1,2,3),nrow=1)
solution(A)

