require(OptionPricing)
require(tictoc)
LatticeEurCall <- function(S0,K,r,T,sigma,N) {
  deltaT = T/N
  u=exp(sigma * sqrt(deltaT))
  d=1/u
  p=(exp(r*deltaT) - d)/(u-d)
  lattice = matrix(0,N+1,N+1)
  for(i in 0:N){
    lattice[i+1,N+1]=max(0,S0*(u^i)*(d^(N-i))-K)
  }
  for(j in (N-1):0){
    for (i in 0:j){
      lattice[i+1,j+1] = exp(-r*deltaT) * (p * lattice[i+2,j+2] + (1-p) * lattice[i+1,j+2])
    }
  }
  return(lattice[1,1])
}
SmartEurLattice <- function(S0,K,r,T,sigma,N) {
  # Precompute invariant quantities
  deltaT = T/N
  u=exp(sigma * sqrt(deltaT))
  d=1/u
  p=(exp(r*deltaT) - d)/(u-d)
  discount = exp(-r*deltaT)
  p_u = discount*p
  p_d = discount*(1-p)
  # set up S values
  SVals = matrix(0,2*N+1,1)
  SVals[1] = S0*d^N
  for (i in 2:(2*N+1)){
    SVals[i] = u*SVals[i-1]
  }
  # set up terminal CALL values
  CVals = matrix(0,2*N+1,1)
  for (i in seq(1,2*N+1,2)){
    CVals[i] = max(SVals[i]-K,0)
  }
  # work backwards
  for (tau in 1:N){
    for (i in seq((tau+1),(2*N+1-tau),2)){
      CVals[i] = p_u*CVals[i+1] + p_d*CVals[i-1]
    }
  }
  return(CVals[N+1])
}
tic()
BS_EC(S0 = 50, K = 50, r = 0.1, sigma = 0.4, T = 5/12)['price']
toc()

tic()
LatticeEurCall(S0 = 50, K = 50, r = 0.1, sigma = 0.4, T = 5/12,N = 2000)
toc()

tic()
SmartEurLattice(S0 = 50, K = 50, r = 0.1, sigma = 0.4, T = 5/12,N = 2000)
toc()