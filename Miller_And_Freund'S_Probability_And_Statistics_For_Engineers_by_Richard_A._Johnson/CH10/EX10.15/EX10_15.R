#Null Hypothesis:Random variable has Poisson distribution with lambda=4.6
#Alternative Hypothesis:Random variable does not have Poisson distribution with lambda=4.6
L.o.c=0.01
n=10
m=4
df=n-m
chsqr0.01=qchisq(1-0.01,6)
chsqr0.01
#Reject Null hypothesis if chisq>chisq0.01 for df=6
#Calculating Chisq :-
observedf<-c(18,47,76,68,74,46,39,15,9,8)#observed frequency
expectedf<-c(22.4,42.8,65.2,74.8,69.2,52.8,34.8,20,10,8)#expected frequency
chisq.test(observedf, p = expectedf/sum(expectedf))
print("Since the value of chisq does't exceed chisq0.01 there for the distribution is poisson distribution")