require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}
f <- function(r,T,VT,UT) {
  exp(-r*T)*max(VT-UT, 0)
}
ExchangeMC <- function(V0,U0,sigmaV,sigmaU,rho,T,r,NRepl) {
  eps1 = rnorm(NRepl)
  eps2 = rho*eps1 + sqrt(1-rho^2)*rnorm(NRepl)
  VT = V0*exp((r - 0.5*sigmaV^2)*T + sigmaV*sqrt(T)*eps1)
  UT = U0*exp((r - 0.5*sigmaU^2)*T + sigmaU*sqrt(T)*eps2)
  DiscPayoff = matrix()
  for(i in 1:length(VT)){
    DiscPayoff[i] = f(r,T,VT[i],UT[i])
  }
  parameter_estimation<-.normFit(DiscPayoff)
  ci<-norm.interval(DiscPayoff)
  return(c(parameter_estimation,ci))
}
VO = 50
UO = 60
sigmaV = 0.3
sigmaU = 0.4
rho = 0.7
T = 5/12
r = 0.05
NRepl = 200000
ExchangeMC(VO,UO,sigmaV,sigmaU,rho,T,r,NRepl)