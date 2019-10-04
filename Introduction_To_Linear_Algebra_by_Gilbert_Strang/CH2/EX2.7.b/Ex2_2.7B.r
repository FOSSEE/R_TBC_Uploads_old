# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 2.7B   Chapter : 2.7   Pageno : 115
# Symmetric Factorisation
library(pracma)
A<-matrix(c(1,4,5,4,2,6,5,6,3),ncol=3)
L<-lu(A)$L
D<-lu(A)$U
for(i in 1:3){
  j<-i+1
  while(j<=3){
    D[i,j]<-0
    j<-j+1
  }
}
LT<-t(L)
print("Symmetric factorisation of A=LDLT")
print(L)
print(D)
print(LT)
print(L%*%D%*%LT)