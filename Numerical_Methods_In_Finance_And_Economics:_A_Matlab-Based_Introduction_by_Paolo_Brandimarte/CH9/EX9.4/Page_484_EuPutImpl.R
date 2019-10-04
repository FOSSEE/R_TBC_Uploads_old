require(pracma)

EuPutImpl<-function(S0,K,r,T,sigma,Smax,dS,dt){
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
  # set up the tridiagonal coefficients matrix
  a = 0.5*(r*dt*veti-sigma^2*dt*(veti^2))
  b = 1+sigma^2*dt*(veti^2)+r*dt
  c = -0.5*(r*dt*veti+sigma^2*dt*(veti^2))
  zero<-matrix(0,1,M-1)
  coeff = (diag(c(0,a[3:M],0)))[1:M-1,2:M] + diag(b[2:M]) + (rbind(diag(c[2:M-1]),zero))[2:M,1:(M-1)]
  L = lu(coeff)$L
  U = lu(coeff)$U
  # solve the sequence of linear systems
  aux = matrix(0,M-1,1)
  for (j in N:1){
    aux[1] = - a[2] * matval[1,j]
    # other term from BC is zero
    matval[2:M,j] = solve(U,(solve(L,(matval[2:M,j+1] + aux))))
  }
  # return price, possibly by linear interpolation outside the grid
  price = interp1(vetS, matval[,1], S0)
  return(price)
}
EuPutImpl(50,50,0.1,5/12,0.4,100,0.5,5/2400)
