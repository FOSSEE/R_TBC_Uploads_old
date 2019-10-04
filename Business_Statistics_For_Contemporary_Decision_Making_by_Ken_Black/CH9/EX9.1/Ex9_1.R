# Formula to test Hypoyhesis about population mean  :
# z = sample_mean - pop_mean/(sd/sqrt(n))

pop_mean = 4.30
sample_mean = 4.156
sd = .574
n = 32
a = .05 # alpha value

# Calcultaed value of test statistic :
z1 = (sample_mean - pop_mean)/(sd/sqrt(n))
z1

# Critical Z value associated with alpha = 0.05 :
z = qnorm(.05,lower.tail=TRUE)
z

# critical sample mean :
sample_mean_c = (z * (sd/sqrt(n))) + pop_mean
sample_mean_c