#There are two types of catalyst for the chemical reaction
Catalyst1<-c(0.63,2.64,1.85,1.68,1.09,1.67,0.73,1.04,0.68)
Catalyst2<-c(3.71,4.09,4.11,3.75,3.49,3.27,3.72,3.49,4.26)
n1 = n2 = 9 
loc=0.05
#Null hypothesis: mu1-mu2 = 0
#Alternative hypothesis: mu1-mu2!= 0
#We choose the Smith-Satterthwaite test statistic with delta0 = 0
#The null hypothesis will be rejected if t< -t0.025 or t > t0.025, but the value
#of t0.025 depends on the estimated degrees of freedom.
df=11
t0.025=qt(1-0.025,11)
t0.025
t.test(Catalyst1,Catalyst2,alternative ="g")
cat("Decision: Since t= -9.71 is less than -2.201, the null hypothesis must be
rejected at level of significance 0.05")