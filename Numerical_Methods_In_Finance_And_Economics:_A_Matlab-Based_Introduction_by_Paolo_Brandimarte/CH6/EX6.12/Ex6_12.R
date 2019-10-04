A <- matrix(data=c(-1, 1, 1, -1, 0, 0, 1, 0, 4, 0, 0, 0, 2, 2, 1), nrow=3, ncol=5, byrow=TRUE)
b <- matrix(data=c(1, 3, 1), nrow=3, ncol=1, byrow=FALSE)
asvd = svd(A)
adiag = diag(1/asvd$d)
solution = asvd$v %*% adiag %*% t(asvd$u) %*% b
Check = A %*% solution

# This solution does not match with the book, 
# but in any case it's NOT FEASIBLE either as values present are less than ZERO

# Book solution check
X<-matrix(data = c(0,3,-2,0,5),nrow = 5,ncol = 1,byrow = TRUE)
A %*% X