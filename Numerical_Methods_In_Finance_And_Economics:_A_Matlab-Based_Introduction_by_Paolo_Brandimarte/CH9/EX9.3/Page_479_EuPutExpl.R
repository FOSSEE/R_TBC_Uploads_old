require(pracma)

EuPutExpl<-function(S0,K,r,T,sigma,Smax,dS,dt){
  # set up grid and adjust increments if necessary
  M = round(Smax/dS)
  dS = Smax/M
  N = round(T/dt)
  dt = T/N
  matval = matrix(0,M+1,N+1)
  vetS = seq(0,Smax,length=M+1)
  veti = 0:M
  vetj = 0:N
  # set up boundary conditions
  for (k in 1:(M+1)){
    matval[k,N+1] = max(K-vetS[k],0)
  }
  matval[1,] = K*exp(-r*dt*(N-vetj))
  matval[M+1,] = 0
  # set up coefficients 
  a = 0.5*dt*(sigma^2*veti - r)*veti
  b = 1- dt*(sigma^2*veti^2 + r)
  c = 0.5*dt*(sigma^2*veti + r)*veti
  # solve backward in time
  for (j in N:1){
    for (i in 2:M){
      matval[i,j] = a[i]*matval[i-1,j+1] + b[i]*matval[i,j+1]+ c[i]*matval[i+1,j+1]
    }
  }
  # return price, possibly by linear interpolation outside the grid
  price = interp1(vetS, matval[,1], S0)
  return(price)
}
EuPutExpl(50,50,0.1,5/12,0.4,100,2,5/1200)
EuPutExpl(50,50,0.1,5/12,0.3,100,2,5/1200)
EuPutExpl(50,50,0.1,5/12,0.3,100,1.5,5/1200)
EuPutExpl(50,50,0.1,5/12,0.3,100,1,5/1200)