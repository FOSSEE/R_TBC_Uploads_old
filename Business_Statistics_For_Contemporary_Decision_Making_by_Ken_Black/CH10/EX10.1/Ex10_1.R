# z formula for the difference in two sample means : 
# z = (samp_mean_1-samp_mean_2)-(pop_mean_1-pop_mean_2)/sqrt((sd1^2/n1)+(sd2^2/n2))

samp_mean_1 = 3352
samp_mean_2 = 5727
sd1 = 1100
sd2 = 1700
n1 = 87
n2 = 76

# Observed value of Z :
z1 = ((samp_mean_1-samp_mean_2)-(0))/sqrt((sd1^2/n1)+(sd2^2/n2))
z1

# Critical value of Z :
z = qnorm(.001, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
z

# sample critical :
s_c = (0)-(z*sqrt((sd1^2/n1)+(sd2^2/n2)))
s_c

# The difference in sample means would need to be at least 704.23 
# to reject the null hypothesis. 

#  The actual sample difference in this problem :
s_c = samp_mean_1-samp_mean_2
s_c # which is considerably larger than the critical value of difference

#  Thus, with the critical value method also, the null hypothesis is rejected.

