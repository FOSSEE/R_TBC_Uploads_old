#Method 1: Monte Carlo Integration
#install.packages("functional")
library(functional)
funct<-function(sampleXVals) {
  oned = sqrt(1-(sampleXVals*sampleXVals))
  return(oned)
}
MCIntegrate <- function(funct, a,b,N) {
  sampleXVals = matrix(0,N)
  set.seed(148)
  sampleXVals = a + (b-a)*runif(N)
  Integral = (b-a)* mean(funct(sampleXVals))
  return(Integral)
}
MCIntegrate(funct,0,1,50000000)


#Method 2
meanX = 0.786;
s= 0.03;
num = 100;
alpha = 0.05;
tval =  qt(1-alpha,num-1)
upperlim = meanX + (tval*s)/sqrt(num);
lowerlim = meanX - (tval*s)/sqrt(num);
cat("The 95% confidence interval is ",lowerlim,"to ",upperlim)