BlsMC1 <- function(S0, K , r , T , sigma, NRepl) {
  nuT = (r - 0.5*sigma**2)*T
  siT = sigma * sqrt(T)
  DiscPayoff = exp(-r*T) *pmax(0,(S0*exp(nuT+siT*rnorm(NRepl))-K))
  Price = mean(DiscPayoff)
  return(Price)
}
S0=50
K=60
r=0.05
T=1
sigma=0.2
set.seed(547)
BlsMC1(S0,K,r ,T, sigma, 1000)
BlsMC1(S0,K,r ,T, sigma, 1000)
BlsMC1(S0,K,r ,T, sigma, 1000)
BlsMC1(S0,K,r ,T, sigma, 1000000)
BlsMC1(S0,K,r ,T, sigma, 1000000)
BlsMC1(S0,K,r ,T, sigma, 1000000)