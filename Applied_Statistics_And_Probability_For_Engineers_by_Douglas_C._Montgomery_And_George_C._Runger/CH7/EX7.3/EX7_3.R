#Aircraft engine life(Pg no. 147)

mean1 = 5000
mean2 = 5050

variance1 = 10
variance2 = 6

mean = mean2 - mean1
varianve = (variance2)^2 + (variance1)^2

x = 25

z = (x-mean)/sqrt(varianve)

#P(X2 - X1 >=25) = P(Z >= z)
p = 1 - pnorm(z)
p

cat(round(p,digits = 4),"is the probability that the difference in sample means between the new and the old process will be at least 25 hours")

# The answer may slightly vary due to rounding off of values