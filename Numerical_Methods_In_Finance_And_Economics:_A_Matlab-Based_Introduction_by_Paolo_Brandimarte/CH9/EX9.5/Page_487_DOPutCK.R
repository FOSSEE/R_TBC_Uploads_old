require(pracma)

DOPutCK<-function(S0,K,r,T,sigma,Sb,Smax,dS,dt){
  # set up grid and adjust increments if necessary
  M = round((Smax-Sb)/dS)
  dS = (Smax-Sb)/M
  N = round(T/dt)
  dt = T/N
  matval = matrix(0,M+1,N+1)
  vetS = seq(Sb,Smax,length = M+1)
  veti = vetS / dS
  vetj = 0:N
  # set up boundary conditions
  for (k in 1:(M+1)){
    matval[k,N+1] = max(K-vetS[k],0)
  }
  matval[1,] = 0
  matval[M+1,] = 0
  # set up the coefficients matrix
  alpha = 0.25*dt*( sigma^2*(veti^2) - r*veti)
  beta = -dt*0.5*( sigma^2*(veti^2) + r )
  gamma = 0.25*dt*( sigma^2*(veti^2) + r*veti )
  zero<-matrix(0,1,M-1)
  M1 = -(diag(c(0,alpha[3:M],0)))[1:M-1,2:M] + diag(1-beta[2:M]) - (rbind(diag(gamma[2:M-1]),zero))[2:M,1:(M-1)]
  L = lu(M1)$L
  U = lu(M1)$U
  M2 = (diag(c(0,alpha[3:M],0)))[1:M-1,2:M] + diag(1+beta[2:M]) + (rbind(diag(gamma[2:M-1]),zero))[2:M,1:(M-1)]
  # solve the sequence of linear systems
  for (j in N:1){
    matval[2:M,j] = solve(U,solve(L,(M2%*%matval[2:M,j+1])))
  }
  # return price, possibly by linear interpolation outside the grid
  price = interp1(vetS, matval[,1], S0)
  return(price)
}
DOPutCK(50,50,0.1,5/12,0.4,40,100,0.5,1/120)