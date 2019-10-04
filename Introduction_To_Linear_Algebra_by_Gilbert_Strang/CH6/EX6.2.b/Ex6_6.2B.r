# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 6.2B   Chapter : 6.2     Page No: 306
# Inverse Eigen values Determinant and eigen vector matrix
library(pracma)
A<-5*eye(4)-ones(4)
eigenvalues<-eigen(A)$values
print("Eigen Values of A ")
print(eigenvalues)
A1<-solve(A)
print("Inverse of A ")
print(A1)
eigenvalues1<-eigen(A1)$value
print("Eigen Values of A inverse ")
print(eigenvalues1)
detA<-det(A)
print("Determinant of A")
print(detA)
x<-eigen(A)$vectors[,4] #normalized  eigen vector of eigen value=1
#toget eigen vector in text book
x<-x*(1/x[1])
print("Eigen vector of A for eigen value 1")
print(x)
print("The other eigen vectors are perpendicular to x since A is Symmetric so eigen vector matrix contains x with different signs as follows")
S<-matrix(c(1,-1,1,-1,1,1,-1,-1,1,-1,-1,1,x),ncol=4)
print(S)
print("To get normalized matrix multiply by magnitude of vectors which is same for all and is 0.5")
S<-0.5*S
print(S) # The eigen vectors are with respect to 5,5,5,1