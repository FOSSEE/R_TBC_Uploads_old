#measurements of lead content( ?? g / L) are taken from twelve water specimens spiked with a known concentration
data<-c(2.4,2.9,2.7,2.6,2.9,2.0,2.8,2.2,2.4,2.4,2.0,2.5)
x = 2.483 
s = 0.3129
#Null hypothesis: mu = 2.25 mig/L
#Alternative hypothesis: mu > 2.25 mig/L
mu=2.25
#Criterion: Reject the null hypothesis if t > 2.201, where 2.201 is the value of
#t0.025 for 12-1 = 11 degrees of freedom
t0.025=qt(1-0.025,11)
t.test(data,mu=2.25, alt='greater',conf=.95)
cat("Decision: Since t = 2.58 is greater than 2.201, the null hypothesis must
be rejected. In other words, the mean lead content is above
2.25 mig/L.")