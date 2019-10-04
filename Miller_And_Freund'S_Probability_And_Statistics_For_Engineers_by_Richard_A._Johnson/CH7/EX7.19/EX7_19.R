xbar = 68.45
s = 9.583
mu=71
#Null hypothesis: mu = 71 pounds
#Alternative hypothesis: mu < 71 pounds
z.alpha=qnorm(0.01)
#Criterion: Since the probability of a Type I error is greatest when mu = 71
#pounds, we proceed as if we were testing the null hypothesis mu = 71 pounds
#against the alternative hypothesis mu < 71 pounds at the 0.01 level of
#significance. Thus, the null hypothesis must be rejected if Z < -2.33, where
Z=(xbar-mu)/(s/sqrt(80))
Z
#Decision: Since Z = -2.38 is less than -2.33, the null hypothesis must be
#rejected at level of significance 0.01. In other words, the suspicion that mu < 71
#pounds is confirmed.