require(gmp)
require(lmom)
require(lestat)

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

HaltonPaths<-function(S0,mu,sigma,T,NSteps,NRepl){
  dt = T/NSteps
  nudt = (mu-0.5*sigma^2)*dt
  sidt = sigma*sqrt(dt)
  # Use inverse transform to generate standard normals
  NormMat = matrix(0,NRepl, NSteps)
  Bases = myprimes(NSteps)
  RandMat<-matrix(0,NRepl,NSteps)
  H <- matrix()
  for (i in 2:(NSteps+1)){
    H = GetHalton(NRepl,Bases[i])
    for (j in 1:length(H)){
      RandMat[j,i-1] = invcdf(normal(),H[j])
    }
  }
  Increments = nudt + sidt*RandMat
  LogPaths = apply(cbind(log(S0)*matrix(1,NRepl,1),Increments),1,cumsum)
  LogPaths = t(LogPaths)
  SPaths = exp(LogPaths)
  SPaths[,1] = S0
  return(SPaths)
}

AsianHalton<-function(S0,K,r,T,sigma,NSamples,NRepl){
  Payoff = matrix(0,NRepl,1)
  Path=HaltonPaths(S0,r,sigma,T,NSamples,NRepl)
  Payoff<-matrix(0,NSamples,1)
  for(k in 1:length(Path[,1])){
    Payoff[k] = max(0, mean(Path[k,2:(NSamples+1)]) - K)
  }
  P = mean( exp(-r*T) * matrix(Payoff))
  return(P)
}

set.seed(3226)
AsianHalton(50,50,0.1,5/12,0.4,5,1000)
AsianHalton(50,50,0.1,5/12,0.4,5,3000)
AsianHalton(50,50,0.1,5/12,0.4,5,10000)
AsianHalton(50,50,0.1,5/12,0.4,5,50000)

AsianHalton(50,50,0.1,2,0.4,24,1000)
AsianHalton(50,50,0.1,2,0.4,24,5000)
AsianHalton(50,50,0.1,2,0.4,24,50000)


