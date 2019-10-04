# Example : 2   Chapter : 6.1     Page No: 285
# Eigen values and eigen vectors of Projection matrix
A<-matrix(c(0.5,0.5,0.5,0.5),ncol=2)
sol<-eigen(A)
lambda<-sol$values
x<-sol$vectors #These are normalised eigen vectors 
#to get eigen vectors in text book multiply them with scalars
x[,1]<-x[,1]*(1/x[1,1])
x[,2]<-x[,2]*(1/x[1,2])
print("The eigen values of the matrix are")
print(lambda)
print("The eigen vectors of the matrix are")
print(x)