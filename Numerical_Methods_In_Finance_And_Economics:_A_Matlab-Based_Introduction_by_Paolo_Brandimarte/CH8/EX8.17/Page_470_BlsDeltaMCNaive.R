require(varbvs)
require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}
BlsDeltaMCNaive<-function(S0,K,r,T,sigma,dS,NRepl){
  nuT = (r - 0.5*sigma^2)*T
  siT = sigma * sqrt(T)
  Payoff1<-matrix()
  Payoff2<-matrix()
  for (i in 1:NRepl){
    Payoff1[i] = max(0, S0*exp(nuT+siT*randn(1,1))-K)
    Payoff2[i] = max(0, (S0+dS)*exp(nuT+siT*randn(1,1))-K)
  }
  SampleDiff = exp(-r*T)*(Payoff2 - Payoff1)/dS
  parameter_estimation<-.normFit(SampleDiff)
  ci<-norm.interval(SampleDiff)
  return(c(parameter_estimation,ci))
}
set.seed(762567)
S0=50
K=52
r=0.05
T=5/12
sigma = 0.4
NRepl=50000
dS = 0.5
BlsDeltaMCNaive(S0,K,r,T,sigma,dS,NRepl)