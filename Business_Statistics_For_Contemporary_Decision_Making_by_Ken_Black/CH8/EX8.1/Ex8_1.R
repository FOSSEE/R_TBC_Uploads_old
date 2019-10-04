# Confidence interval to Estimate Population mean :
# pop_mean +/- z*(sd/sqrt(n))

n = 44
sample_mean = 10.455
sd = 7.7
z = 1.645

pop_mean_1 = sample_mean - (z*(sd/sqrt(n)))
pop_mean_1

pop_mean_2 = sample_mean + (z*(sd/sqrt(n)))
pop_mean_2