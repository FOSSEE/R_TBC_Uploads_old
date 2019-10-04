Jacobi <- function(A,b,x0,eps,MaxIter) {
  dA = diag(A)
  C = A - diag(dA)
  Dinv = diag(1/dA)
  B = - Dinv %*% C
  b1 = Dinv %*% b
  oldx = x0
  
  for (i in 1:MaxIter){
    x = B %*% oldx + b1
    if (norm(x-oldx) < eps*norm(matrix(oldx))){
      break
    }
    oldx = x
  }
  cat("Case of Matrix:",A,"\n")
  cat("Terminated after iterations:",i,"\n")
  cat("Jacobi:",x,"\n")
  cat("Exact:",solve(A,b),"\n")
}

A1 <-matrix(c(3, 1, 1, 0, 1, 5, - 1, 2, 1, 0, 3, 1, 0, 1, 1, 4),nrow = 4,ncol = 4,byrow = T)
b<-matrix(c(1, 4, -2, 1),nrow = 4,ncol = 1,byrow = T)
Jacobi(A1,b,rep(0,4),1e-08,10000)

A2 <-matrix(c(2.5, 1, 1, 0, 1, 4.1, -1, 2, 1, 0, 2.1, 1, 0, 1, 1, 2.1),nrow = 4,ncol = 4,byrow = T)
Jacobi(A2,b,rep(0,4),1e-08,10000)

A3 <-matrix(c(2, 1, 1, 0, 1, 3.5, -1, 2, 1, 0, 2.1, 1, 0, 1, 1, 2.1),nrow = 4,ncol = 4,byrow = T)
Jacobi(A3,b,rep(0,4),1e-08,10000)