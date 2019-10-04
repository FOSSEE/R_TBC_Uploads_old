# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 1   Chapter : 3.5     Page No: 170
# Columns of given matrix are dependent
library(pracma)
A<-matrix(c(1,2,1,0,1,0,3,5,3),nrow=3)
if(Rank(A)!=ncol(A)){
  print("The columns of A are dependent")
}
print("As the columns of A are dependent ,there is a nonzero solution to Ax=0")
x<-matrix(c(-3,1,1),ncol=1)
print(A%*%x)
