# Confidence Interval to estimate difference in two population means :
# pop_mean_1-pop_mean_2 = (samp_mean_1-samp_mean_2) +/- (z*sqrt((sd1^2/n1)+(sd2^2/n2)))

n1 = 50
n2 = 50
samp_mean_1 = 21.45
samp_mean_2 = 24.6
sd1 = 3.46
sd2 = 2.99
z = 1.96
pmean_diff_1 = (samp_mean_1-samp_mean_2) + (z*sqrt((sd1^2/n1)+(sd2^2/n2)))
pmean_diff_1

pmean_diff_2 = (samp_mean_1-samp_mean_2) - (z*sqrt((sd1^2/n1)+(sd2^2/n2)))
pmean_diff_2