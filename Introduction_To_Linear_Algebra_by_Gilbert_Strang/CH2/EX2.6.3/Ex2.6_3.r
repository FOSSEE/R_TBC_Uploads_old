# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 3   Chapter : 2.6   Pageno : 98
# Forward Elimination
library(pracma)
A<-matrix(c(1,4,2,9),ncol=2)
b<-c(5,21)
L<-lu(A)$L
U<-lu(A)$U
c<-solve(L,b)
x<-solve(U,c)
print("The solution is ")
print(x)

# The answers may vary due to rounding off values