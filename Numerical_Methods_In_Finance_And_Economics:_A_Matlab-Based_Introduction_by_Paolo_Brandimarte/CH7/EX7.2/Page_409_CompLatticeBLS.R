require(OptionPricing)
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
S0 = 50
K = 50
r = 0.1
sigma = 0.4
T = 5/12
N=50
BlsC = BS_EC(K = K, r = r, sigma = sigma, T = T, S0 = S0)['price']
LatticeC = matrix(0,1,N)
for (i in 1:N){
  LatticeC[i] = LatticeEurCall(S0, K , r , T, sigma, i)
}
plot(1:N, matrix(1,1,N)*BlsC)
lines(1:N, matrix(1,1,N)*BlsC)
lines(1:N, LatticeC)