require(OptionPricing)
EuCallTrinomial <- function(S0,K,r,T,sigma,N,deltaX) {
  # Precompute invariant quantities
  deltaT = T/N
  nu = r - 0.5*sigma^2
  discount = exp(-r*deltaT)
  p_u = discount*0.5*((sigma^2*deltaT+nu^2*deltaT^2)/deltaX^2 + nu*deltaT/deltaX)
  p_m = discount*(1 - (sigma^2*deltaT+nu^2*deltaT^2)/deltaX^2)
  p_d = discount*0.5*((sigma^2*deltaT+nu^2*deltaT^2)/deltaX^2 - nu*deltaT/deltaX)
  # set up S values (at maturity)
  Svals = matrix(0,2*N+1,1)
  Svals[1] = S0*exp(-N*deltaX)
  exp_dX = exp(deltaX)
  for (j in 2:(2*N+1)){
    Svals[j] = exp_dX*Svals[j-1]
  }
  # set up lattice and terminal values
  Cvals = matrix(0,2*N+1,2)
  t = mod(N,2)+1
  for (j in 1:(2*N+1)){
    Cvals[j,t] = max(Svals[j]-K,0)
  }
  for (t in (N-1):0){
    know = mod(t,2)+1
    knext = mod(t+1,2)+1
    for (j in (N-t+1):(N+t+1)){
      Cvals[j,know] = p_d*Cvals[j-1,knext]+p_m*Cvals[j,knext]+p_u*Cvals[j+1,knext]
    }
  }
  return(Cvals[N+1,1])
}
BS_EC(S0 = 100, K = 100, r = 0.06, sigma = 0.3, T = 1)['price']
EuCallTrinomial(S0 = 100, K = 100, r = 0.06, T = 1, sigma = 0.3, N = 3, deltaX = 0.2)
EuCallTrinomial(S0 = 100, K = 100, r = 0.06, T = 1, sigma = 0.3, N = 100, deltaX = 0.2)
EuCallTrinomial(S0 = 100, K = 100, r = 0.06, T = 1, sigma = 0.3, N = 100, deltaX = 0.5)
EuCallTrinomial(S0 = 100, K = 100, r = 0.06, T = 1, sigma = 0.3, N = 100, deltaX = 0.3*sqrt (1/100))
EuCallTrinomial(S0 = 100, K = 100, r = 0.06, T = 1, sigma = 0.3, N = 1000, deltaX = 0.3*sqrt (1/1000))