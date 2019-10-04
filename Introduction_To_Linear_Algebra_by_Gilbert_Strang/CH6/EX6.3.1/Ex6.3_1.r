# Example : 1   Chapter : 6.3     Page No: 313
# Solve Differential equation

# lambda1,lamda2,x1,x2,c,d are computed here.. for remaining details look textbook
A<-matrix(c(0,1,1,0),ncol=2)
lambda<-eigen(A)$values
x<-eigen(A)$vectors #These are normalised eigen vectors
#to get eigen vectors in textbook .. Multiply them with the scalars
x[,1]<-x[,1]*(1/x[1,1])
x[,2]<-x[,2]*(1/x[1,2])
print(x)
u<-c(4,2)
cd<-solve(x,u)
C<-cd[1]
D<-cd[2]
print("Lambda 1 and Lambda 2")
print(lambda)
print("x1 and x2")
print(x)
print("C and D are")
print(C)
print(D)