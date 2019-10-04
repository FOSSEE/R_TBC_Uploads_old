# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 2.6B   Chapter : 2.6   Pageno : 102
# Forward Elimination
library(pracma)
P<-matrix(c(1,1,1,1,1,2,3,4,1,3,6,10,1,4,10,20),ncol=4)
b<-c(1,0,0,0)
L<-lu(P)$L
U<-lu(P)$U
c<-solve(L,b)
x<-solve(U,c)
print("The solution is ")
print(x)