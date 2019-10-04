meanestimator <- function(sigma0 , u, sigma, n, X) {
  meanX= mean(X);
  result = (n*meanX/sigma0)/((n/sigma0)+(1/sigma)) + (u/sigma)/((n/sigma0)+(1/sigma));
  return(result)
}

varestimator <- function(sigma0 , sigma, n) {
  result = (sigma0*sigma)/((n*sigma)+sigma0);
  return(result)
}

u = 50;
sigma= 100;
sigma0 = 60;
n =1;
X =40;
expec = meanestimator(sigma0 , u, sigma, n, X);
var  = varestimator (sigma0, sigma,n);

zalpha = 1.645
lowerlim = -1*sqrt(var)*zalpha+expec;
upperlim = sqrt(var)*zalpha+expec;
cat("With probability 0.9, the sent signal lies between ",lowerlim, "to ", upperlim  )