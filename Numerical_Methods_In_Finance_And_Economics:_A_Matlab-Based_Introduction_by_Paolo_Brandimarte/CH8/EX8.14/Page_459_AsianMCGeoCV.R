require(OptionPricing)
require(fBasics)
require(fOptions)
require(varbvs)
require(lmom)
GeometricAsian<-function(S0,K,r,T,sigma,delta,NSamples){
  dT = T/NSamples
  nu = r - sigma^2/2-delta
  a = log(S0)+nu*dT+0.5*nu*(T-dT)
  b = sigma^2*dT + sigma^2*(T-dT)*(2*NSamples-1)/6/NSamples
  x = (a-log(K)+b)/sqrt(b)
  P = exp(-r*T)*(exp(a+b/2)*cdfnor(x) - K*cdfnor(x-sqrt(b)))
  return(P)
}
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}
AssetPaths <- function(S0,mu,sigma,T,NSteps,NRepl) {
  SPaths = matrix(0,NRepl, 1+NSteps)
  SPaths[,1] = S0
  dt = T/NSteps
  nudt = (mu-0.5*sigma^2)*dt
  sidt = sigma*sqrt(dt)
  for (i in 1:NRepl){
    for (j in 1:NSteps){
      SPaths[i,j+1]=SPaths[i,j]*exp(nudt + sidt*rnorm(1))
    }
  }
  return(SPaths)
}
AsianMCGeoCV<-function(S0,K,r,T,sigma,NSamples,NRepl,NPilot){
  # precompute quantities
  DF = exp(-r*T)
  GeoExact = GeometricAsian(S0,K,r,T,sigma,0,NSamples)
  # pilot replications to set control parameter
  GeoPrices = matrix(0,NPilot,1)
  AriPrices = matrix(0,NPilot,1)
  for (i in 1:NPilot){
    Path=AssetPaths(S0,r,sigma,T,NSamples,1)
    GeoPrices[i]=DF*max(0,(prod(Path[,2:(NSamples+1)]))^(1/NSamples) - K)
    AriPrices[i]=DF*max(0,mean(Path[,2:(NSamples+1)]) - K)
  }
  MatCov = cov(cbind(GeoPrices, AriPrices))
  c = - MatCov[1,2] / var(GeoPrices)
  # MC run
  ControlVars = matrix(0,NRepl,1)
  for (i in 1:NRepl){
   Path = AssetPaths(S0,r,sigma,T,NSamples,1)
   GeoPrice = DF*max(0, (prod(Path[2:(NSamples+1)]))^(1/NSamples) - K)
   AriPrice = DF*max(0, mean(Path[2:(NSamples+1)]) - K)
   ControlVars[i] = AriPrice + c * (GeoPrice - GeoExact)
  }
  parameter_estimation<-.normFit(ControlVars)
  ci<-norm.interval(ControlVars)
  return(c(parameter_estimation,ci))
}
set.seed(2372)
S0 = 50
K = 55
r = 0.05
sigma = 0.4
T = 1
NSamples = 12
NRepl = 9000
NPilot = 1000
AsianMCGeoCV(S0,K,r,T,sigma,NSamples,NRepl,NPilot)