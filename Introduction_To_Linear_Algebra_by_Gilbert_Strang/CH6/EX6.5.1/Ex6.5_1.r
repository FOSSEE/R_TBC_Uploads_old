# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 1   Chapter : 6.5     Page No: 344
# Tests for positive definitenes
library(pracma)
A<-matrix(c(2,-1,0,-1,2,-1,0,-1,2),ncol=3)
u<-lu(A)$U
pivots<-c(u[1,1],u[2,2],u[3,3])
upper_left_deteminants<-c(A[1,1],det(A[-3,-3]),det(A))
eigenvalues<-eigen(A)$values
print("All pivots, upper left determinants and eigen values are positive")
print(pivots)
print(upper_left_deteminants)
print(eigenvalues)