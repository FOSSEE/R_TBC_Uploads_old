
# USing Weibull Distribution

Theeta =50 
gama = 2

#a
cat("P(X>10) = ", 1 - pweibull(10,shape = gama,scale = sqrt(Theeta)))

#b
cat(" Expected lifetime of thermisters is E(X) =", (Theeta^(1/gama))*(gamma(1+(1/gama))))
