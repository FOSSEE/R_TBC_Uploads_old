# Example : 3   Chapter : 9.2     Page No: 478
# Condition number for positive definite matrix
A<-matrix(c(6,0,0,2),ncol=2)
print("Condition number for positive definite matrix is max.eigen value/min.eign value")
condition_number=eigen(A)$values[1]/eigen(A)$values[2]
print("Condition number for A")
print(condition_number)