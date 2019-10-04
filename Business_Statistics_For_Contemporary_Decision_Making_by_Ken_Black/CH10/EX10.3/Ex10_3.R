# t formula to test the difference in means assuming sd1,sd2 are equal :
#t = (samp_mean_1-samp_mean_2)-(pop_mean_1-pop_mean_2)/(sqrt((s1^2(n1-1))+(s2^2(n2-1))/n1+n2-2))*sqrt((1/n1)+(1/n2))

n1 = 46
n2 = 26
samp_mean_1 = 5.42
samp_mean_2 = 5.04
s1 = .58
s2 = .49
df = n1+n2-2

# Critical t value :
qt(.005, df, lower.tail = FALSE, log.p = FALSE)

# Observed t value :
t = ((samp_mean_1-samp_mean_2)-0)/(sqrt(((s1^2*(n1-1))+(s2^2*(n2-1)))/(n1+n2-2))*sqrt((1/n1)+(1/n2)))
t

# Because the observed value of is greater than the critical table value of the decision is to reject
# the null hypothesis