require(pracma)
require(tictoc)
StopLoss <- function(S0,K,mu,sigma,r,T,Paths) {
  NRepl = dim(Paths)[1]
  NSteps = dim(Paths)[2]
  NSteps = NSteps - 1
  # true number of steps
  Cost = matrix(0,NRepl,1)
  dt = T/NSteps
  DiscountFactors = exp(-r*(seq(0,NSteps,1)*dt))
  for (k in 1:NRepl){
    CashFlows = matrix(0,NSteps+1,1)
    if (Paths[k,1] >= K){
      Covered = 1
      CashFlows[1] = -Paths[k,1]
    } else {
      Covered = 0
    }
    for (t in 2:(NSteps+1)){
      if ((Covered == 1) & (Paths[k,t] < K)){
        # Sell
        Covered = 0
        CashFlows[t] = Paths[k,t]
      } else if ((Covered == 0) & (Paths[k,t] > K)){
        # Buy
        Covered = 1
        CashFlows[t] = -Paths[k,t]
      }
    }
    if (Paths[k,NSteps + 1] >= K){
      # Option is exercised
      CashFlows[NSteps + 1] = CashFlows[NSteps + 1] + K
      }
    Cost[k] = - dot(DiscountFactors,CashFlows)
  }
  return(mean(Cost))
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
S0 = 50
K = 50
mu = 0.1
sigma = 0.4
r = 0.05
T = 5/12
NRepl =100000
NSteps = 10
set.seed(39473)
Paths=AssetPaths(S0,mu, sigma,T,NSteps,NRepl)

StopLossV <- function(S0,K,mu,sigma,r,T,Paths) {
  NRepl = dim(Paths)[1]
  NSteps = dim(Paths)[2]
  NSteps = NSteps - 1
  Cost = matrix(0,NRepl,1)
  CashFlows = matrix(0,NRepl,NSteps+1)
  dt = T/NSteps
  DiscountFactors = exp(-r*(seq(0,NSteps,1))*dt)
  OldPrice = cbind(matrix(0,NRepl,1), Paths[,1:NSteps])
  UpTimes = which(OldPrice < K & Paths >= K)
  DownTimes = which(OldPrice >= K & Paths < K)
  CashFlows[UpTimes] = -Paths[UpTimes]
  CashFlows[DownTimes] = Paths[DownTimes]
  ExPaths = which(Paths[,NSteps+1] >= K)
  CashFlows[ExPaths,NSteps+1] = CashFlows[ExPaths,NSteps+1] + K
  Cost = -CashFlows %*%(matrix(DiscountFactors))
  return(mean(Cost))
}

tic()
StopLossV(S0,K,mu,sigma,r,T,Paths)
toc()