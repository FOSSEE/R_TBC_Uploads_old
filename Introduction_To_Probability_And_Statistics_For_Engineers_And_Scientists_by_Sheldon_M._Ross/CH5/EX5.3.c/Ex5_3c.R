bino <- function(n, k, p) {
  factorial(n)*(p^k)*((1-p)^(n-k))/(factorial(k)*factorial(n-k))
}

condprob <- function(n,k,p,i) {
  bino(n,i,p)*bino(m,k-i,p)/bino(n+m,k, p);
}

#The function condprob will give P{X=i|X+Y=k}