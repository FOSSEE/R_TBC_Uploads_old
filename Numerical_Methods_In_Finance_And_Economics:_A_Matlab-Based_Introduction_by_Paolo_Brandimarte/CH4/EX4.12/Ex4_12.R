#require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}

BlsMCAV <- function(S0,K,r,T,sigma,NPairs) {
  nuT = (r - 0.5*sigma^2)*T;
  siT = sigma * sqrt(T);
  Veps = rnorm(NPairs);
  Payoff1 = pmax( 0 , S0*exp(nuT+siT*Veps) - K);
  Payoff2 = pmax( 0 , S0*exp(nuT+siT*(-Veps)) - K);
  DiscPayoff = exp(-r*T) * 0.5 * (Payoff1+Payoff2);
  parameter_estimation<-.normFit(DiscPayoff)
  ci<-norm.interval(DiscPayoff)
  answer<-list(parameter_estimation,ci)
  return(answer)
}

BlsMC2 <- function(S0,K,r,T,sigma,NRepl) {
  nuT = (r - 0.5*sigma^2)*T;
  siT = sigma * sqrt(T);
  DiscPayoff = exp(-r*T)*pmax(0, S0*exp(nuT+siT*rnorm(NRepl))-K);
  parameter_estimation<-.normFit(DiscPayoff)
  ci<-norm.interval(DiscPayoff)
  final<-list(parameter_estimation,ci)
  return(final)
}

MCButterfly <- function(S0,r,T,sigma,NRepl,K1,K2,K3) {
  nuT = (r-0.5*sigma^2)*T;
  siT = sigma*sqrt(T);
  Veps = rnorm(NRepl);
  Stocks = S0*exp(nuT + siT*Veps);
  In1 = which((Stocks > K1) & (Stocks < K2));
  In2 = which((Stocks >= K2) & (Stocks < K3));
  Payoff = exp(-r*T)*matrix(c((Stocks[In1]-K1),  (K3-Stocks[In2]), matrix(0,(NRepl - length(In1) - length(In2)),1)))
  parameter_estimation<-.normFit(Payoff)
  ci<-norm.interval(Payoff)
  final<-list(parameter_estimation,ci)
  return(final)
}

MCAVButterfly <- function(S0,r,T,sigma,NPairs,K1,K2,K3) {
  nuT = (r-0.5*sigma^2)*T;
  siT = sigma*sqrt(T);
  Veps = rnorm(NPairs);
  Stocks1 = S0*exp(nuT + siT*Veps);
  Stocks2 = S0*exp(nuT - siT*Veps);
  Payoff1 = matrix(0,NPairs,1);
  Payoff2 = matrix(0,NPairs,1);
  In = which((Stocks1 > K1) & (Stocks1 < K2));
  Payoff1[In] = (Stocks1[In] - K1);
  In = which((Stocks1 >= K2) & (Stocks1 < K3));
  Payoff1[In] = (K3 - Stocks1[In]);
  In = which((Stocks2 > K1) & (Stocks2 < K2));
  Payoff2[In] = (Stocks2[In] - K1);
  In = which((Stocks2 >= K2) & (Stocks2 < K3));
  Payoff2[In] = (K3 - Stocks2[In]);
  Payoff = 0.5 * exp(-r*T) * (Payoff1 + Payoff2);
  parameter_estimation<-.normFit(Payoff)
  ci<-norm.interval(Payoff)
  final<-list(parameter_estimation,ci)
  return(final)
}

set.seed(3374)
Y<-BlsMC2(50,50 ,0.05,1, 0.4,200000)
#from parameter estimation, value of mean = 9.11143
(Y[[2]][2]-Y[[2]][1])/9.11143

Z<-BlsMCAV(50,50,0.05,1,0.4,100000)
#from parameter estimation, value of mean = 9.020972
(Z[[2]][2]-Z[[2]][1])/9.020972

set.seed(39489378)
SO = 60;
K1 = 55;
K2 = 60;
K3 = 65;
T = 5/12;
r = 0.1;
sigma = 0.4;
a<-MCButterfly(SO,r,T,sigma,100000,K1,K2,K3);
#from parameter estimation, value of mean = 0.6104167
(a[[2]][2]-a[[2]][1])/0.6104167

set.seed(72725)
b<-MCAVButterfly(SO,r ,T, sigma,50000,K1 ,K2,K3)
#from parameter estimation, value of mean = 0.6154077
(b[[2]][2]-b[[2]][1])/0.6154077