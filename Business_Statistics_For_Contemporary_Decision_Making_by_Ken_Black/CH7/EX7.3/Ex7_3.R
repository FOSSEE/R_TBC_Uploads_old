# Z formula for Sample Proportion : 
# z = (sample_proportion - population_prop)/sqrt((population_prop*q)/sample size)

p = 0.10 # population_prop
sample_prop = 12/80
n = 80
q = 1-p

sd = sqrt(p*q/n)

# P(sample_prop >= .15) :
pnorm(sample_prop,p,sd,lower.tail=FALSE)