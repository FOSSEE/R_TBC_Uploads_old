require(pracma)
L11 <- function(premium,S0,K,r,sigma,T,N) {
  deltaT = T/N
  u=exp(sigma * sqrt (deltaT))
  d=1/u
  p=(exp(r*deltaT) - d)/(u-d)
  lattice = matrix(0,N+1,N+1)
  for (i in 0:N){
    if (S0*(u^i)*(d^(N-i)) >= K){
      lattice[i+1,N+1]=S0*(u^i)*(d^(N-i)) - K - premium
    }
  }
  for (j in (N-1):0){
    for (i in 0:j){
      lattice[i+1, j+1] = p*lattice[i+2, j+2] + (1-p)*lattice[i+1, j+2]
    }
  }
  return(lattice[1,1])
}

f <- function(P) {
  L11(premium = P,S0 = 12,K = 14,r = 0.1, sigma = 0.2, T = 10/12, N = 10) 
}
fzero(f = f,x = 2)$x