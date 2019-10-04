SORGaussSeidel <- function(A, b,x0, omega, eps,MaxIter) {
  oldx = x0
  x = x0
  N = length(x0)
  omega1 = 1 - omega
  for (k in 1:MaxIter){
    for (i in 1:(N-1)){
      z = (b[i] - sum(A[i,(1:i-1)]) * x[1:(i-1)]) - sum(A[i,(i+1):N] * x[(i+1):N]) / A[i,i]
      x[i] = omega * z + omega1 * oldx[i]
    }
    if(norm(matrix(x-oldx))<eps*norm(matrix(oldx))){
      break
    }
    oldx = x
  }
  result$x = x
  result$k = k
  return(result)
}

A2<-matrix(c(2.5, 1, 1, 0, 1, 4.1, -1, 2, 1, 0, 2.1, 1, 0, 1, 1,2.1),nrow = 4,ncol = 4,byrow = T)
b<-matrix(c(1, 4, -2, 1),nrow = 4,ncol = 1,byrow = T)
omega = seq(0,2,0.1)
N = length(omega)
NumIterations = rep(0,N)
for (i in 1:N){
  result = list()
  result = SORGaussSeidel(A2,b,rep(0,4),omega[i],1e-08,1000)
  NumIterations[i] = result$k
}
plot(omega,NumIterations)
lines(omega,NumIterations)