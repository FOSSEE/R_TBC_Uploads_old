# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 2.6A   Chapter : 2.6   Pageno : 101
# LU factorisation
library(pracma)
P<-matrix(c(1,1,1,1,1,2,3,4,1,3,6,10,1,4,10,20),ncol=4)
print("LU factorisation of P")
print(lu(P))