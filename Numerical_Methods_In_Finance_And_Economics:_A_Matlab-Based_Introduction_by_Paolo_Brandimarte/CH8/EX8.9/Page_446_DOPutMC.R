require(OptionPricing)
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
DOPutMC<-function(S0,K,r,T,sigma,Sb,NSteps,NRepl){
  # Generate asset paths
  Call = BS_EC(S0,K,r,T,sigma)
  Put = BS_EP(S0,K,r,T,sigma)
  Payoff = matrix(0,NRepl,1)
  NCrossed = 0
  for (i in 1:NRepl){
    Path=AssetPaths(S0,r,sigma,T,NSteps,1)
    crossed = any(Path <= Sb)
    if (crossed == 0){
      Payoff[i] = max(0, K - Path[NSteps+1])
    } else{
      Payoff[i] = 0
      NCrossed = NCrossed + 1
    }
  }
  parameter_estimation<-.normFit(exp(-r*T) * Payoff)
  ci<-norm.interval(exp(-r*T) * Payoff)
  return(c(parameter_estimation,ci))
}
DOPutMC(50,50,0.1,2/12,0.4,40,60,50000)