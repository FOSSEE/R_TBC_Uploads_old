Sigma<-matrix(c(4, 1, -2, 1, 3, 1, -2, 1, 5),nrow = 3,ncol = 3,byrow = TRUE)
mu<-matrix(c(8,6,10),nrow = 3,ncol = 1,byrow = TRUE)
eigen(Sigma)$values
set.seed(2392)

MultiNormrnd <- function(mu,sigma,howmany) {
  n = length(mu)
  Z = matrix(0,howmany,n)
  U = chol(sigma)
  for (i in 1:howmany){
    Z[i,] = t(mu) + t(matrix(rnorm(n))) %*% U
  }
  return(Z)
}

Z = MultiNormrnd(mu,Sigma,10000)
mean(Z[1])
mean(Z[2])
mean(Z[3])
cov(Z)