# Example : 3   Chapter : 6.1     Page No: 286
# Eigen values and eigen vectors of Reflection matrix
A<-matrix(c(0,1,1,0),ncol=2)
sol<-eigen(A)
lambda<-sol$values
print("The eigen values of the matrix are")
print(lambda)
#The  answer may slightly vary due to  rounding off values
