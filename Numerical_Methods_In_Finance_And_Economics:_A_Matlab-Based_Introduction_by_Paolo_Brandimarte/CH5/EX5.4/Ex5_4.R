HeatImpl <- function(deltax, deltat, tmax) {
  N = round(1/deltax)
  M = round(tmax/deltat)
  sol = matrix(0,N+1,M+1)
  rho = deltat / (deltax)^2
  B = diag(c((1+2*rho) * array(1,c(N-1,1)))) - diag(c(0,rho*array(1,c(N-1,1))))[2:100,1:99] - diag(c(0,rho*array(1,c(N-1,1))))[1:99,2:100]
  vetx = seq(0,1,deltax)
  for (i in 2:ceiling((N+1)/2)){
    sol[i,1] = 2*vetx[i]
    sol[N+2-i,1] = sol[i,1]
  }
  for (j in 1:M){
    sol[2:N,j+1] = solve(B,sol[2:N,j])
  }
  return(sol)
}

deltax=dx=0.01
deltat=dt=0.001
tmax=dt*100
sol=HeatImpl(dx,dt,tmax)

par(mfrow=c(2,2))
plot(seq(0,1,dx),sol[,1])
lines(seq(0,1,dx),sol[,1])
plot(seq(0,1,dx),sol[,11])
lines(seq(0,1,dx),sol[,11])
plot(seq(0,1,dx),sol[,51])
lines(seq(0,1,dx),sol[,51])
plot(seq(0,1,dx),sol[,101])
lines(seq(0,1,dx),sol[,101])