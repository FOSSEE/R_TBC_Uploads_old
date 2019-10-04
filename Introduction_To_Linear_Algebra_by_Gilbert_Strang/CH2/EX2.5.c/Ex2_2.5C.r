# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 2.5C   Chapter : 2.5   Pageno : 88
# Inverse of the Pascal matrix by gauss jordan elimination method
library(pracma)
L<-matrix(c(1,1,1,1,0,1,2,3,0,0,1,3,0,0,0,1),ncol=4)
I<-eye(4)
LI<-cbind(L,I)
IL1<-rref(LI)
L1<-IL1[,c(5:8)]
print("Inverse of given Pascal matrix is")
print(L1)