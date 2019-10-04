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
AsianMCCV<-function(S0,K,r,T,sigma,NSamples,NRepl,NPilot){
  # pilot replications to set control parameter
  TryPath=AssetPaths(S0,r,sigma,T,NSamples,NPilot)
  StockSum<-matrix()
  PP<-matrix()
  TryPayoff<-matrix()
  for (i in 1:length(TryPath[,1])){
    StockSum[i] = sum(TryPath[i,])
    PP[i] = mean(TryPath[i,2:(NSamples+1)])
    TryPayoff[i] = exp(-r*T) * max(0, PP[i] - K)
  }
  MatCov = cov(cbind(StockSum, TryPayoff))
  c = - MatCov[1,2] / var(StockSum)
  dt = T / NSamples
  ExpSum = S0 * (1 - exp((NSamples + 1)*r*dt)) / (1 - exp(r*dt))
  # MC run
  ControlVars = matrix(0,NRepl,1)
  for (i in 1:NRepl){
    StockPath = AssetPaths(S0,r,sigma,T,NSamples,1)
    Payoff = exp(-r*T) * max(0, mean(StockPath[2:(NSamples+1)]) - K)
    ControlVars[i] = Payoff + c * (sum(StockPath) - ExpSum)
  }
  parameter_estimation<-.normFit(ControlVars)
  ci<-norm.interval(ControlVars)
  return(c(parameter_estimation,ci))
}
X<-AsianMCCV(50,50 ,0.1,5/12,0.4,5,45000,5000)
X
X[[3]]-X[[2]]