estpi <- function(m) {
  z=sqrt(1-runif(m)^2) ;
  out = 4*sum(z)/m;
  return(out)
}
set.seed(483272)
estpi(1000)
estpi(1000)
estpi(1000)

estpiIS <- function(m,L) {
  s= seq(0,1-1/L,1/L) + 1/(2*L)
  hvals = matrix(sqrt(1 - s^2))
  # get cumulative probabilities
  cs=apply(hvals,2,cumsum);
  est = matrix(0,m)
  for (j in 1:m){
    # locate sub-interval
    loc=sum(runif(1)*cs[L] > cs) +1;
    # sample uniformly within sub-interval
    x=(loc-1)/L + runif(1)/L;
    p=hvals[loc]/cs[L];
    est[j] = sqrt(1 - x^2)/(p*L);
  }
  plot(est)
  z = 4*sum(est)/m;
  return(z)
}

estpiIS(1000,10)
estpiIS(1000,10)
estpiIS(1000,10)
estpiIS(1000,100)
estpiIS(1000,100)
estpiIS(1000,100)