meanestimator <- function(sigma0 , u, sigma, n, X) {
  meanX= mean(X)
  result = (n*meanX/sigma0)/((n/sigma0)+(1/sigma)) + (u/sigma)/((n/sigma0)+(1/sigma))
}

varestimator <- function(sigma0 , sigma, n) {
  (sigma0*sigma)/((n*sigma)+sigma0)  
}