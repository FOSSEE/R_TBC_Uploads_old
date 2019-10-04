# F test for two Population Variance :
# F = s1^2/s2^2
# df_num = v1 = n1-1 and df_deno = v2 = n2-1

# from given table we computed :
s1_sq = 5961428.6
s2_sq = 737142.9
n1 = 7
n2 = 8

# critical F-value :
qf(.01, df1=n1-1, df2=n2-1, lower.tail = FALSE, log.p = FALSE)

# Obseved F- value :
F = s1_sq/s2_sq
F

# Because the observed value of F = 8.09 is greater than the table 
# critical F value of 7.19, the decision is to reject the null hypothesis.
