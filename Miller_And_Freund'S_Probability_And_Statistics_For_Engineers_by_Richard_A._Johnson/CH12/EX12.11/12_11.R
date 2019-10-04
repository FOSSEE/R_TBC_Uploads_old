Tr<-c(1,1,1,1,2,2,2,2,3,3,3,3)
x<-c(0.90,0.95,1.05,0.80,0.50,0.40,0.15,0.25,0.20,0.55,0.30,0.40)#Original reflectivity
y<-c(1.05,0.95,1.15,0.85,1.10,1.00,0.90,0.80,0.75,1.05,0.95,0.90)#Final reflectivity
#Null hypothesis: aplha1 = alpha2 = alpha3 = 0
#Alternative hypothesis: The alpha's are not all equal to zero.
loc=0.05
F0.05=qf(1-0.05,2,8)
#criterion: Reject the null hypothesis if F > 4.46, the value of F0.05 for
#k - 1 = 3 - 1 = 2 and nk - k-1 = 4 × 3 -3 - 1 = 8 degrees of freedom
Tr<-c(rep('A',4),rep('B',4),rep('C',4))
fit<-lm(y~x+factor(Tr))
anova(fit)
cat("Since F value of Treatments is 6.48 there for we reject the Null Hypothesis")

