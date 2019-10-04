#install.packages("binom") package binomial praportion
library(binom)
n=55#Wind turbines
r=8#Total noisy turbine
binom.confint( r, n, conf.level=0.95,methods="exact")
cat("We are 95% confident that for proportion p of wind turbines that 
are too noisy is in between 0.065 and 0.267")
