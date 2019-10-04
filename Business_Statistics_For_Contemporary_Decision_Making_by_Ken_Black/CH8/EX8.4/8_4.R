# Confidence Interval to estimate Population Proportion :
# p = samp_prop +/- (z*sqrt(samp_prop*q/sample size)

samp_prop = 0.51
q = 1-samp_prop
z = 1.75
n = 210 # sample size 

p_1 = samp_prop - (z*sqrt(samp_prop*q/n))
p_1

p_2 = samp_prop + (z*sqrt(samp_prop*q/n))
p_2


