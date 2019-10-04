require(gmp)
require(lmom)
require(lestat)
require(matrixStats)

myprimes<-function(N){
  found = 0
  trynumber = 2
  p <- matrix()
  while (found < N){
    if (isprime(trynumber)){
      p <-c(p , trynumber)
      found = found + 1
    }
    trynumber = trynumber + 1
  }
  return(p)
}

GetHalton <- function(HowMany, Base) {
  Seq = matrix(0,HowMany,1)
  NumBits = 1+round(log(HowMany)/log(Base));
  VetBase = Base^(-(1:NumBits));
  WorkVet = matrix(0,1,NumBits);
  for (i in 1:HowMany){
    j = 1;
    ok = 0;
    while (ok == 0){
      WorkVet[j] = WorkVet[j]+1;
      if (WorkVet[j] < Base){
        ok = 1;
      }
      else{
        WorkVet[j] = 0;
        j = j+1;
      }
    }
    Seq[i] = sum(WorkVet * VetBase)
  }
  return(Seq)
}

WienerHaltonBridge<-function(T, NSteps, NRepl, Limit){
  NBisections = log2(NSteps)
  if (round(NBisections) != NBisections){
    cat('ERROR in WienerHB: NSteps must be a power of 2','\n')
    return
  }
  # Generate standard normal samples
  NormMat = matrix(0,NRepl, NSteps)
  Bases = myprimes(NSteps)
  for (i in 2:(NSteps+1)){
    H = GetHalton(NRepl,Bases[i])
    for (j in 1:length(H)){
      NormMat[j,i-1] = invcdf(normal(),H[j])
    }
  }
  # Initialize extreme points of paths
  WSamples = matrix(0,NRepl,NSteps+1)
  WSamples[,1] = 0
  WSamples[,NSteps+1] = sqrt(T)*NormMat[,1]
  # Fill paths
  HUse = 2
  TJump = T
  IJump = NSteps
  for (k in 1:NBisections){
    left = 1
    i = IJump/2 + 1
    right = IJump + 1
    for (l in 1:(2^(k-1))){
      a = 0.5*(WSamples[,left] + WSamples[,right])
      b = 0.5*sqrt(TJump)
      if (HUse <= Limit){
        WSamples[,i] = a + b*NormMat[,HUse]
      } else {
        WSamples[,i] = a + b*rnorm(NRepl)
        }
        right = right + IJump
        left = left + IJump
        i = i + IJump
    }
    IJump = IJump/2
    TJump = TJump/2
    HUse = HUse + 1
    }
  return(WSamples)
}

GBMHaltonBridge<-function(S0,mu,sigma,T,NSteps,NRepl,Limit){
  if (round(log2(NSteps)) != log2(NSteps)){
    cat('ERROR in GBMBridge: NSteps must be a power of 2','\n')
    return
  }
  dt = T/NSteps
  nudt = (mu-0.5*sigma^2)*dt
  W = WienerHaltonBridge(T,NSteps,NRepl,Limit)
  Increments = nudt + sigma*t(diff(t(W)))
  LogPaths = apply(cbind(log(S0)*matrix(1,NRepl,1),Increments),1,cumsum)
  LogPaths = t(LogPaths)
  Paths = exp(LogPaths)
  Paths[,1] = S0
  return(Paths)
}

set.seed(271782)
NRepl = 10000
T = 5
NSteps = 16
Limit = NSteps
S0 = 50
mu = 0.1
sigma = 0.4
Paths = GBMHaltonBridge(S0, mu, sigma, T, NSteps, NRepl, Limit)
r = mu
NSamples = NSteps 
K = 55
Payoff<-matrix()
for(p in 1:length(Paths[,1])){
  Payoff[p] = max(0, mean(Paths[p,2:(NSamples+1)]) - K)
}
P = mean( exp(-r*T) * matrix(Payoff))