require(pracma)
require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
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

BlsHaltonBM <- function(S0,K,r,T,sigma,NPoints,Base1,Base2) {
  nuT = (r - 0.5*sigma^2)*T;
  siT = sigma * sqrt(T);
  H1 = GetHalton(ceiling(NPoints/2),Base1);
  H2 = GetHalton(ceiling(NPoints/2),Base2);
  VLog = sqrt(-2*log(H1))
  Norm1 = VLog * cos(2*pi*H2)
  Norm2 = VLog * sin(2*pi*H2)
  Norm = rbind(Norm1,Norm2)
  DiscPayoff = exp(-r*T) * pmax( 0 , S0*exp(nuT+siT*Norm) - K);
  Price = mean(DiscPayoff);
  return(Price)
}

BlsHaltonBM(50,52,0.1,5/12,0.4,5000,2,7)
BlsHaltonBM(50,52,0.1,5/12,0.4,5000,11,7)
BlsHaltonBM(50,52,0.1,5/12,0.4,5000,2,4)

BlsMC2 <- function(S0,K,r,T,sigma,NRepl) {
  nuT = (r - 0.5*sigma^2)*T;
  siT = sigma * sqrt(T);
  DiscPayoff = exp(-r*T)*pmax(0, S0*exp(nuT+siT*rnorm(NRepl))-K);
  parameter_estimation<-.normFit(DiscPayoff)
  ci<-norm.interval(DiscPayoff)
  final<-list(parameter_estimation,ci)
  return(final)
}

set.seed(3726)
BlsMC2(50,52,0.1,5/12,0.4,5000)
BlsMC2(50,52,0.1,5/12,0.4,5000)
BlsMC2(50,52,0.1,5/12,0.4,5000)

BlsHaltonINV <- function(S0,X,r,T,sigma,NPoints,Base) {
  nuT = (r - 0.5*sigma^2)*T;
  siT = sigma * sqrt(T);
  # Use inverse transform to generate standard normals
  H = GetHalton(NPoints,Base);
  Veps = qnorm(H);
  DiscPayoff = exp(-r*T)*pmax(0,S0*exp(nuT+siT*Veps)-X);
  Price = mean(DiscPayoff);
  return(Price)
}

BlsHaltonINV(50,52,0.1,5/12,0.4,1000,2)
BlsHaltonINV(50,52,0.1,5/12,0.4,2000,2)
BlsHaltonINV(50,52,0.1,5/12,0.4,5000,2)
BlsHaltonINV(50,52,0.1,5/12,0.4,1000,2)
BlsHaltonINV(50,52,0.1,5/12,0.4,10000,2)
BlsHaltonINV(50,52,0.1,5/12,0.4,50000,2)

GetHalton(17,17)

BlsHaltonINV(50,52,0.1,5/12,0.4,1000,499)
BlsHaltonINV(50,52,0.1,5/12,0.4,2000,499)
BlsHaltonINV(50,52,0.1,5/12,0.4,5000,499)
BlsHaltonINV(50,52 ,0.1,5/12,0.4,10000,499)
BlsHaltonINV(50,52,0.1,5/12,0.4,50000,499)

plot(GetHalton(1000,109), GetHalton(1000,113))