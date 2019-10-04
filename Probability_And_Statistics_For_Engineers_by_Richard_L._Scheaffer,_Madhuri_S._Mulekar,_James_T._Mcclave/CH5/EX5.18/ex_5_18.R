#Using negative binomial distribution

r=3
p=0.2
E = 10*(r/p) + r*20
V= 10*10*(r*(1-p)/(p^2))

cat(", the total time to use up the kits has an expected value of ",E," minutes and a standard deviation of",sqrt(V),"minutes")
