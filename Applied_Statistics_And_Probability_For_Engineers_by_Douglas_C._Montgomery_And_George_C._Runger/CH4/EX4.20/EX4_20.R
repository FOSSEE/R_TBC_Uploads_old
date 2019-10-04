#Normal Approximation to Poisson(Pg no. 131)

#P(X <= 950.5)
z = (950.5-1000)/sqrt(1000)
p = pnorm(z,0,1)
cat("P(X <= 950.5) =",p)