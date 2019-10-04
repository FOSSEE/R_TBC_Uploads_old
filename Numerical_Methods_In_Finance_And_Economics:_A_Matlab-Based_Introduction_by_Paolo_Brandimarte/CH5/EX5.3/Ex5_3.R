HeatExpl <- function(deltax, deltat, tmax) {
  N = round(1/deltax)
  M = round(tmax/deltat)
  sol = matrix(0,N+1,M+1)
  rho = deltat / (deltax)^2
  rho2 = 1-2*rho
  vetx = seq(0,1,deltax)
  for (i in 2:ceiling((N+1)/2)){
    sol[i,1] = 2*vetx[i]
    sol[N+2-i,1] = sol[i,1]
  }
  for (j in 1:M){
    for (i in 2:N){
      sol[i,j+1] = rho*sol[i-1,j] + rho2*sol[i,j] + rho*sol[i+1,j]
    }
  }
  return(sol)
}

dx = 0.1;
dt = 0.001;
tmax = dt*100;
sol=HeatExpl(dx, dt , tmax)

par(mfrow=c(2,2))
plot(seq(0,1,dx), sol[,1])
lines(seq(0,1,dx), sol[,1])
plot(seq(0,1,dx), sol[,11])
lines(seq(0,1,dx), sol[,11])
plot(seq(0,1,dx), sol[,51])
lines(seq(0,1,dx), sol[,51])
plot(seq(0,1,dx), sol[,101])
lines(seq(0,1,dx), sol[,101])