f<-function(T, Path){
  BS_EC(S0 = Path,K = K,r = r,sigma = sigma,T = T)['delta']
}
require(OptionPricing)
DeltaHedging <- function(S0,K,mu,sigma,r,T,Paths) {
  NRepl = dim(Paths)[1]
  NSteps = dim(Paths)[2]
  NSteps = NSteps - 1
  Cost = matrix(0,NRepl,1)
  CashFlows = matrix(0,1,NSteps+1)
  dt = T/NSteps
  DiscountFactors = exp(-r*(seq(0,NSteps,1)*dt))
  for (i in 1:NRepl){
    Path = Paths[i,]
    Position = 0
    Deltas = matrix()
    for (k in 1:NSteps){
      Deltas[k] = f(T = T-(k-1)*dt, Path = Path[k])
    }
    for (j in 1:NSteps){
      CashFlows[j] = (Position - Deltas[j])*Path[j]
      Position = Deltas[j]
    }
    if (Path[NSteps+1] > K){
      CashFlows[NSteps+1] = K - (1-Position)*Path[NSteps+1]
    } else {
      CashFlows[NSteps+1] = Position*Path[NSteps+1]
    }
    Cost[i] = -CashFlows %*% DiscountFactors
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

S0 = 50
K = 52
mu = 0.1
sigma = 0.4
r = 0.05
T = 5/12
NRepl =10000
NSteps = 10
C = BS_EC(K = K, r = r, sigma = sigma, T = T, S0 = S0)['price']
set.seed(3872)
Paths=AssetPaths(S0,mu,sigma,T,NSteps,NRepl)
True_Price = BS_EC(S0 = S0,K = K,r = r,sigma = sigma,T = T)['price']
SL = StopLossV(S0,K,mu,sigma,r,T,Paths)
DC = DeltaHedging(S0,K,mu,sigma,r,T,Paths)

#NSteps = 100
#set.seed(38232)
#Paths=AssetPaths(S0,mu,sigma,T,NSteps,NRepl)
#True_Price = BS_EC(S0 = S0,K = K,r = r,sigma = sigma,T = T)['price']
#SL = StopLossV(S0,K,mu,sigma,r,T,Paths)
#DC = DeltaHedging(S0,K,mu,sigma,r,T,Paths)