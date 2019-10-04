# Confidence interval to Estimate Population mean using finite correction :
# (pop_mean) +/- (z*(sd/sqrt(n))*sqrt(N-n/N-1))

n = 50
N = 800
sample_mean = 34.30
sd = 8
z = 2.33

pop_mean_1 = sample_mean - (z*(sd/sqrt(n))*sqrt((N-n)/(N-1)))
pop_mean_1

pop_mean_2 = sample_mean + (z*(sd/sqrt(n))*sqrt((N-n)/(N-1)))
pop_mean_2