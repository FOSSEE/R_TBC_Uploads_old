# Example : 2   Chapter : 9.2     Page No: 475
# Norm of diagonal matrix
A<-matrix(c(2,0,0,3),ncol=2)
print("The norm of the diagonal matrix is its largest entry")
print(A[2,2])
print("Largest eigen value and norm are equal for this matrix")
lambdamax<-eigen(A)$values[1]
print(lambdamax)
print("Eigen vectors of this matrix are")
ev<-round(eigen(A)$vectors)
print(ev)
