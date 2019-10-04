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

is.integer0 <- function(x)
{
  is.integer(x) && length(x) == 0L
}

DOPutMCCondIS <- function(S0,K,r,T,sigma,Sb,NSteps,NRepl,bp){
  dt = T/NSteps
  nudt = (r-0.5*sigma^2)*dt
  b = bp*nudt
  sidt = sigma*sqrt(dt)
  Call = GBSOption(TypeFlag = "c", S = S0, X = K, Time = T, r = r, sigma = sigma, b =r)
  Put = GBSOption(TypeFlag = "p", S = S0, X = K, Time = T, r = r, sigma = sigma, b =r)
  # Generate asset paths and payoffs for the down and in option
  NCrossed = 0
  Payoff = matrix(0,NRepl,1)
  Times = matrix(0,NRepl,1)
  StockVals = matrix(0,NRepl,1)
  ISRatio = matrix(0,NRepl,1)
  for (i in 1:NRepl){
    # generate normals
    vetZ = nudt - b + sidt*randn(1,NSteps)
    LogPath = apply(cbind(log(S0), vetZ),1,cumsum)
    Path = exp(LogPath)
    jcrossed = pmin(which(Path <= Sb ))
    if (!(is.integer0(jcrossed))){
      jcrossed = min(jcrossed)
      NCrossed = NCrossed + 1
      TBreach = jcrossed - 1
      Times[NCrossed,] = TBreach * dt
	StockVals[NCrossed,] = Path[jcrossed]
      ISRatio[NCrossed,] = exp( TBreach*b^2/2/sigma^2/dt + b/sigma^2/dt*sum(vetZ[1:TBreach]) - TBreach*b/sigma^2*(r - sigma^2/2))
    }
  }
  Paux<-matrix()
  f <- function(S0,K,r,T,sigma) {
    GBSOption(TypeFlag = "p", S = S0, X = K, Time = T, r = r, sigma = sigma, b =r)
  }
  if (NCrossed > 0){
    for (j in 1:NCrossed){
      Paux[j] = f(StockVals[j],K,r,(T-Times[j]),sigma)@price
      Payoff[j] = exp(-r*Times[j])* Paux[j] * ISRatio[j]
    }
  }
  parameter_estimation<-.normFit(Put@price - Payoff)
  ci<-norm.interval(Put@price - Payoff)
  return(c(parameter_estimation,ci,NCrossed))
}
DOPutMCCondIS(50,52,0.1,2/12,0.4,30,60,10000,0)
DOPutMCCondIS(50,52,0.1,2/12,0.4,30,60,10000,20)
DOPutMCCondIS(50,52,0.1,2/12,0.4,30,60,10000,50)
DOPutMCCondIS(50,52,0.1,2/12,0.4,30,60,10000,200)