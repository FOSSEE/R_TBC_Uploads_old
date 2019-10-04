require(PopED)

transport <- function(xmin, dx, xmax, dt, tmax, c, f0) {
  N = ceiling((xmax - xmin) / dx);
  xmax = xmin + N*dx;
  M = ceiling(tmax/dt);
  k1 = 1 - dt*c/dx;
  k2 = dt*c/dx;
  solution = matrix(0,N+1,M+1);
  vetx = seq(xmin,xmax,dx)
  for (i in 1:N+1) {
    solution[i,1] = feval(f0,vetx[i]);
  }
  fixedvalue = solution[1,1];
  # this is needed because of finite domain 
  plot(solution[,1])
  for (j in 1:M){
    solution[,j+1] = k1*solution[,j] + k2* c(fixedvalue,solution[1:N,j]);
    lines(solution[,j])
  }
  return(solution)
}

f0transp <- function(x) {
  if(x < (-1)){
    y = 0
  } else if (x <= 0){
    y=x+1;
  } else{
    y = 1;
  }
}

xmin = -2;
xmax = 3;
dx = 0.05;
tmax = 2;
dt = 0.01;
c = 1;
sol = transport(xmin, dx, xmax, dt, tmax, c ,f0transp)

TransportPlot <- function(xmin, dx, xmax, times, sol) {
  par(mfrow=c(2,2))
  plot(seq(xmin,xmax,dx), sol[,times[1]])
  lines(seq(xmin,xmax,dx), sol[,times[1]])
  plot(seq(xmin,xmax,dx), sol[,times[2]])
  lines(seq(xmin,xmax,dx), sol[,times[2]])
  plot(seq(xmin,xmax,dx), sol[,times[3]])
  lines(seq(xmin,xmax,dx), sol[,times[3]])
  plot(seq(xmin,xmax,dx), sol[,times[4]])
  lines(seq(xmin,xmax,dx), sol[,times[4]])
}

TransportPlot(xmin, dx, xmax, c(1, 51, 101, 201), sol)

dx = 0.01
sol = transport(xmin, dx, xmax, dt, tmax, c ,f0transp)
TransportPlot(xmin, dx, xmax, c(1, 51, 101, 201), sol)

#Blow-outs
dx = 0.005
sol = transport(xmin, dx, xmax, dt, tmax, c ,f0transp)
TransportPlot(xmin, dx, xmax, c(1, 51, 101, 201), sol)