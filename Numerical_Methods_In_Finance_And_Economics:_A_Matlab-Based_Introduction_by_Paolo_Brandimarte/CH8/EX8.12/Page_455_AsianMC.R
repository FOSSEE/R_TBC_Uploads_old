require(OptionPricing)
require(fBasics)
require(fOptions)
require(varbvs)
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
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}
AsianMC<-function(S0,K,r,T,sigma,NSamples,NRepl){
  Payoff = matrix(0,NRepl,1)
  for (i in 1:NRepl){
    Path=AssetPaths(S0,r,sigma,T,NSamples,1)
    Payoff[i] = max(0, mean(Path[2:(NSamples+1)]) - K)
  }
  parameter_estimation<-.normFit(exp(-r*T) * Payoff)
  ci<-norm.interval(exp(-r*T) * Payoff)
  return(c(parameter_estimation,ci))
}
set.seed(28282)
X<-AsianMC(50,50,0.1,5/12,0.4,5,50000)
X
X[[3]]-X[[2]]