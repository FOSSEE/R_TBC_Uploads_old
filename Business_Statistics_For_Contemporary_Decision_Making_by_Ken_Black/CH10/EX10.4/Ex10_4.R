# CONFIDENCE INTERVAL TO ESTIMATE difference in means ASSUMING THE POPULATION VARIANCES ARE UNKNOWN AND EQUAL :
n1 = 13
n2 = 15
samp_mean_1 = 4.35
samp_mean_2 = 6.84
s1 = 1.20
s2 = 1.42

alpha = .025
df = 26

t = qt(alpha, df, lower.tail = FALSE, log.p = FALSE)
t

# p_m_diff = pop_mean_1-pop_mean_2
s_diff = samp_mean_1-samp_mean_2
b = sqrt(((s1^2*(n1-1))+(s2^2*(n2-1)))/(n1+n2-2))
c = sqrt((1/n1)+(1/n2))


p_m_diff_1 = s_diff - (t*b*c)
p_m_diff_1

p_m_diff_2 = s_diff + (t*b*c)
p_m_diff_2