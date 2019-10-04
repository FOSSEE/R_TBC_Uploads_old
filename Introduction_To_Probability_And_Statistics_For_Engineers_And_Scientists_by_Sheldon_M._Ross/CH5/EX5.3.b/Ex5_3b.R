hyper <- function(N, M, n, i) {
  factorial(N)*factorial(M)*factorial(n)*factorial(N+M-n)/(factorial(i)*factorial(N-i)*factorial(n-i)*factorial(M-n+i)*factorial(N+M))
}

r= 50
n=100
X=25
cat("Estimate of the number of animals in the region is",r*n/X)