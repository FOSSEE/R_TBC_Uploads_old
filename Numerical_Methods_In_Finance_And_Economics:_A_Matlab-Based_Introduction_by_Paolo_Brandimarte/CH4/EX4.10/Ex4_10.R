#require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
     z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
     xbar = mean(data)
     sdx = sqrt(variance/length(data))
     c(xbar - z * sdx, xbar + z * sdx)
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

set.seed(483762)
S0=50;
K=55;
r=0.05;
T=5/12;
sigma=0.2;
answer<-BlsMC2(S0,K,r,T,sigma,50000)
answer2<-BlsMC2(S0,K,r,T,sigma,1000000)
#(answer[[2]][2]-answer[[2]][1])/1.168224
#(answer2[[2]][2]-answer2[[2]][1])/1.173184