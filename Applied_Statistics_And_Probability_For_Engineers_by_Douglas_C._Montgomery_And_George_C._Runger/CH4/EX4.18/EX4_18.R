#The digital communication(Pg no. 130)

np = (16*10^6)*(1*10^-5)

#P(X <= 150.5)
z = (150.5-np)/sqrt(np*(1-10^-5))
p = pnorm(z,0,1)
cat("P(X <= 150.5) =",p)