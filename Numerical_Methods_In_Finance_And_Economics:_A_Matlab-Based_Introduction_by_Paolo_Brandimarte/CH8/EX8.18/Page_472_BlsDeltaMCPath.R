require(varbvs)
require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}

BlsDeltaMCPath<-function(S0,K,r,T,sigma,NRepl){
  nuT = (r - 0.5*sigma^2)*T
  siT = sigma * sqrt(T)
  VLogn<-matrix()
  for (i in 1:NRepl){
    VLogn[i] = exp(nuT+siT*randn(1,1))
  }
  SampleDelta = exp(-r*T) * VLogn * (S0*VLogn > K)
  parameter_estimation<-.normFit(SampleDelta)
  ci<-norm.interval(SampleDelta)
  return(c(parameter_estimation,ci))
}

set.seed(3725678)
S0=50
K=52
r=0.05
T=5/12
sigma = 0.4
NRepl=50000
BlsDeltaMCPath(S0,K,r,T,sigma,NRepl)