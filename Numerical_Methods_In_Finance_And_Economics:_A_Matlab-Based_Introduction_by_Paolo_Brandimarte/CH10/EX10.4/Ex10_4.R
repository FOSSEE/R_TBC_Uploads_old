require(varbvs)
require(pracma)
require(zeallot)
OptFolioMC<-function(W0,S0,mu,sigma,r,T,NScen,utilf){
  muT = (mu - 0.5*sigma^2)*T
  sigmaT = sigma*sqrt(T)
  R = exp(r*T)
  NormSamples = muT + sigmaT*randn(NScen,1)
  ExcessRets = exp(NormSamples) - R
  MExpectedUtility<-function(x){
    -mean(utilf(W0*((x*ExcessRets) + R)))
  }
  share = fminbnd(MExpectedUtility, 0, 1)
  return(share)
}
set.seed(294)
share = OptFolioMC(1000,50,0.1,0.4,0.05,1,10000,log)
share$xmin


set.seed(2947)
share = OptFolioMC(1000,50,0.1,0.4,0.05,1,5000000,log)
share$xmin

OptFolioGauss<-function(W0,S0,mu,sigma,r,T,NScen,utilf){
  muT = (mu - 0.5*sigma^2)*T
  sigmaT = sigma*sqrt(T)
  R = exp(r*T)
  print(GaussHermite(muT,sigmaT^2,NScen))
  c(x,w) %<-% GaussHermite(muT,sigmaT^2,NScen)
  ExcessRets = exp(x) - R
  MExpectedUtility<-function(x){
    - Re(dot(Re(w),  utilf(W0*((Re(x)*ExcessRets) + R))))
  }
  share = fminbnd(MExpectedUtility, 0, 1)
}


GaussHermite<-function(mu,sigma2,N){
  HPoly1 = c(1/pi^0.25)
  HPoly2 = c(sqrt(2) / pi^0.25, 0)
  for (j in 1:(N-1)){
    HPoly3 = c(sqrt(2/(j+1)) * HPoly2 , 0) - c(0, 0, sqrt(j/(j+1))*HPoly1)
    HPoly1 = HPoly2
    HPoly2 = HPoly3
  }
  x1 = polyroot(HPoly3)
  w1 = matrix(0,N,1)
  for (i in 1:N){
    w1[i] = 1/(N)/(polyval(HPoly1, x1[i]))^2
  }
  x = sort(x1*sqrt(2*sigma2)+mu)
  index= order(x1*sqrt(2*sigma2)+mu)
  w = w1[index]/sqrt(pi)
  return(list(x,w))
}

share = OptFolioGauss(1000,50 ,0.1, 0.4, 0.05,1,2,log)
share 

#different answers as R polyroot function calculating different roots than matlab.