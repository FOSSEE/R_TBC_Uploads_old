# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 4   Chapter : 6.4     Page No: 334
# Pivots and Eigen values have same signs for the Symmetric matrices
library(pracma)
A<-matrix(c(1,3,3,1),ncol=2)
u<-lu(A)$U
pivots<-c(u[1,1],u[2,2])
eigenvalues<-eigen(A)$values
print("Eigen values and pivots have same signs for symmetric matrix")
print(pivots)
print(eigenvalues)
print("This is not true if the matrix is not symmetric")
B<-matrix(c(1,-1,6,-4),ncol=2)
Bu<-lu(B)$U
Bpivots<-c(Bu[1,1],Bu[2,2])
Beigenvalues<-eigen(B)$values
print(Bpivots)
print(Beigenvalues)