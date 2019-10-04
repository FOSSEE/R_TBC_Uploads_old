# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 5   Chapter : 2.5   Pageno : 86
# Inverse of Lower traingular matrix is also a lower traingular matrix
library(pracma)
L<-matrix(c(1,3,4,0,1,5,0,0,1),ncol=3)
I<-eye(3)
LI<-cbind(L,I)
R<-rref(LI)
L1<-R[,c(4:6)]
print("Inverse of L is")
print(L1)