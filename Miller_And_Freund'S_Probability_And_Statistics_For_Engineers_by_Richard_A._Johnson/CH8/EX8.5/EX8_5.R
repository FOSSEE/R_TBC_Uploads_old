#We  testing the claim that the resistance of electric wire can be reduced by more than
#0.050 ohm by alloying
n1=n2=32
#For Standard wire
xbar = 0.136#ohm
s1 = 0.004 #ohm
#For alloyed wire
ybar = 0.083#ohm
s2 = 0.005#ohm
loc=0.05
#Null hypothesis: mu1-mu2 = 0.050
#Alternative hypothesis: mu1- mu2 > 0.050
z.alpha=qnorm(1-0.05)
z.alpha
#Criterion: Reject the null hypothesis if Z > 1.645, where Z is given as
Z=(xbar-ybar-loc)/sqrt((s1^2/n1)+(s2^2/n2))
Z
cat("Since z = 2.65 exceeds 1.645, the null hypothesis must be rejected;
that is, the data substantiate the claim")
