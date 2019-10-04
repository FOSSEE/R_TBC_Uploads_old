AmPutLattice <- function(S0,K,r,T,sigma,N) {
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
  SVals[N+1] = S0
  for (i in 1:N){
    SVals[N+1+i] = u*SVals[N+i]
    SVals[N+1-i] = d*SVals[N+2-i]
  }
  # set up terminal values
  PVals = matrix(0,2*N+1,1)
  for (i in seq(1,2*N+1,2)){
    PVals[i] = max(K-SVals[i],0)
  }
  # work backwards
  for (tau in 1:N){
    for (i in seq((tau+1),(2*N+1-tau),2)){
      hold = p_u*PVals[i+1] + p_d*PVals[i-1]
      PVals[i] = max(hold, K-SVals[i])
    }
  }
  return(PVals[N+1])
}

AmPutLattice(S0 = 50,K = 50,r = 0.05,T = 5/12, sigma = 0.4, N = 1000)