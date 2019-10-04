# t formula to test the Difference in Two Dependent Population :
# t = (mean_samp_diff - D  )/(sd/sqrt(n))
# df = n-1
# D = mean_pop_diff, sd = sd_samp_diff, n = num_of_pairs, d= samp_diff_pair


Individual <- c(1,2,3,4,5,6,7)
Before <- c(32,11,21,17,30,38,14)
After <- c(39,15,35,13,41,39,22)
n = 7

for(i in 1:7){
  d = Before - After
}
print(d)
Individual <- cbind(Individual,Before,After,d)
Individual

mean_samp_diff = sum(d)/n
mean_samp_diff
d1 = sum(d)/7

sd = sqrt((sum((d-mean_samp_diff)^2))/(n-1))
sd

D = 0
t = (mean_samp_diff - D  )/(sd/sqrt(n))
t

#  Because the observed value of -2.54 is less than the critical, table value of -1.943 and the
# p-value (0.022) is less than alpha (.05), the decision is to reject the null hypothesis.




