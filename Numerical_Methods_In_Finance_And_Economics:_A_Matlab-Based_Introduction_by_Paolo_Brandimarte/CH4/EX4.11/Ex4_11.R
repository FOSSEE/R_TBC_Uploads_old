#require(fBasics)
norm.interval = function(data, variance = var(data), conf.level = 0.95) {
  z = qnorm((1 - conf.level)/2, lower.tail = FALSE)
  xbar = mean(data)
  sdx = sqrt(variance/length(data))
  c(xbar - z * sdx, xbar + z * sdx)
}
set.seed(337282)
X=exp(runif(100))
parameter_estimation<-.normFit(X)
ci<-norm.interval(X)
#from parameter estimation, value of mean = 1.7031094
(ci[2]-ci[1])/1.7031094

set.seed(3374573)
U1=runif(50)
U2 = 1 - U1
X = 0.5*(exp(U1)+exp(U2))
parameter_estimation<-.normFit(X)
ci<-norm.interval(X)
#from parameter estimation, value of mean = 1.73413846
(ci[2]-ci[1])/1.73413846