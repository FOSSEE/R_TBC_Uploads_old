# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 2   Chapter : 2.6   Pageno : 96
# LU Factorisation
library(pracma)
A<-matrix(c(1,1,0,0,1,2,1,0,0,1,2,1,0,0,1,2),ncol=4)
print("LU factorisation of A is")
print(lu(A))
# The answers may vary due to rounding off values