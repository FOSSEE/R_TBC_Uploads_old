require(OptionPricing)
require(fBasics)
require(fOptions)
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

is.integer0 <- function(x)
{
  is.integer(x) && length(x) == 0L
}

DOPutMCCond <- function(S0,K,r,T,sigma,Sb,NSteps,NRepl) {
  dt = T/NSteps;
  Call = GBSOption(TypeFlag = "c", S = S0, X = K, Time = T, r = r, sigma = sigma, b =r)
  Put = GBSOption(TypeFlag = "p", S = S0, X = K, Time = T, r = r, sigma = sigma, b =r)
  # Generate asset paths and payoffs for the down and in option
  NCrossed = 0
  Payoff = matrix(0,NRepl,1)
  Times = matrix(0,NRepl,1)
  StockVals = matrix(0,NRepl,1)
  for (i in 1:NRepl){
    Path=AssetPaths(S0,r,sigma,T,NSteps,1)
    tcrossed = pmin(which(Path <= Sb))
    if (!(is.integer0(tcrossed))){
      NCrossed = NCrossed + 1
      Times[NCrossed,] = (length(tcrossed) - 1) * dt
      StockVals[NCrossed,] = Path[,length(tcrossed)]
    }
  }
  Paux<-matrix()
  f <- function(S0,K,r,T,sigma) {
    GBSOption(TypeFlag = "p", S = S0, X = K, Time = T, r = r, sigma = sigma, b =r)
  }
  if (NCrossed > 0){
    for (j in 1:NCrossed){
      Paux[j] = f(StockVals[j],K,r,(T-Times[j]),sigma)@price
      Payoff[j] = exp(-r*Times[j]) * Paux[j]
    }
  }
  parameter_estimation<-.normFit(Put@price - Payoff)
  ci<-norm.interval(Put@price - Payoff)
  return(c(parameter_estimation,ci,NCrossed))
}

DOPutMCCond(50,52,0.1,2/12,0.4,30,60,200000)