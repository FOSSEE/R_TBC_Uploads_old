#require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}

BlsMCIS <- function(S0,K,r,T,sigma,NRepl) {
  nuT = (r - 0.5*sigma^2)*T;
  siT = sigma * sqrt(T);
  ISnuT = log(K/S0) - 0.5*sigma^2*T;
  Veps = rnorm(NRepl);
  VY = ISnuT + siT*Veps;
  ISRatios = exp( (2*(nuT - ISnuT)*VY - nuT^2 + ISnuT^2)/2/siT^2);
  DiscPayoff = exp(-r*T)*pmax(0, (S0*exp(VY)-K));
  parameter_estimation<-.normFit(DiscPayoff*ISRatios)
  ci<-norm.interval(DiscPayoff*ISRatios)
  final<-list(parameter_estimation,ci)
  return(final)
}

Halton <- function(n,b) {
  n0 = n;
  h = 0;
  f = 1/b;
  while (n0 > 0){
    n1 = floor(n0/b);
    r = n0 - n1*b;
    h = h+f*r;
    f = f/b;
    n0=n1;
  }
  return(h)
}

seq = matrix(0,10)
for (i in 1:10){
  seq[i] = Halton(i,2);
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



plot(runif(100) ,runif(100))
plot(GetHalton(100,2) ,GetHalton (100,7))
plot(GetHalton(100,2), GetHalton(100,4))