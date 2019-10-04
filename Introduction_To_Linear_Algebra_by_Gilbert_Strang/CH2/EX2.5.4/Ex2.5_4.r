# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 4   Chapter : 2.5   Pageno : 85
# Inverse of matrix by guass jordan elimination matrix
library(pracma)
A<-matrix(c(2,4,3,7),ncol=2)
I<-eye(2)
AI<-cbind(A,I)
R<-rref(AI)
X<-R[,c(3:4)]
print("Inverse of A is")
print(X)