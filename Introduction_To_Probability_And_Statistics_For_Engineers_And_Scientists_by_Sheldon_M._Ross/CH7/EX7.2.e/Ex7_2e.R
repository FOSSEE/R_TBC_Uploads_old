normal <-function(X, Xmean, n){
  u= Xmean;
  newsum = 0;
  for (i in 1:n){
    newsum= newsum + (X(i)-Xmean)^2
  }
  sigmasquared = sqrt((newsum/n));
  return(u,sigmasquared)
}