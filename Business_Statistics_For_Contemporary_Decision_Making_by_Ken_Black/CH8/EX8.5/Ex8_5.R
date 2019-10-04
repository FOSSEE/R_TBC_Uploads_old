# Confidence Interval to estimate Population Proportion :
# p = samp_prop +/- (z*sqrt(samp_prop*q/sample size)

samp_prop = 34/212  # sample size =212 and no. of jeans = 34
q = 1-samp_prop
z = 1.645
n = 212 # sample size 

p_1 = samp_prop - (z*sqrt(samp_prop*q/n))
p_1

p_2 = samp_prop + (z*sqrt(samp_prop*q/n))
p_2


