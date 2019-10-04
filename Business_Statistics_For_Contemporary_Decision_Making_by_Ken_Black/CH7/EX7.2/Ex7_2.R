# Z formula for Sample mean of a finite population : 
# z = (samplemean - population_mean)/(sd/sqrt(n))*(sqrt((N-n)/(N-1)))

pop_mean = 37.6 # avg
pop_sd = 8.3 # sd
n = 45 # sample size
N = 360 # finite population
sample_mean = 40

sd = (pop_sd/sqrt(n))*(sqrt((N-n)/(N-1)))

pnorm(sample_mean,pop_mean,sd,lower.tail=TRUE)