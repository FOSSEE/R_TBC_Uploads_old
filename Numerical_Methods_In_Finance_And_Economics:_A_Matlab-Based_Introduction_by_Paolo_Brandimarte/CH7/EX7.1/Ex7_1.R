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
call=LatticeEurCall(50,50,0.1,5/12,0.4,5)
call
call=LatticeEurCall(50,50,0.1,5/12,0.4,500)
call