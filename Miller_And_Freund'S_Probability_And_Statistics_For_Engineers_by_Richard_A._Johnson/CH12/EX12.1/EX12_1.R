#H0=the laboratories obtaining consistent result
#tin-coating weight for 12 disc in each liboratory is show as 
LabA<-c(0.25,0.27,0.22,0.30,0.27,0.28,0.32,0.24,0.31,0.26,0.22,0.28)#Laboratory A Data of Tin-Coting weight
LabB<-c(0.18,0.28,0.21,0.23,0.25,0.20,0.27,0.19,0.24,0.22,0.29,0.16)#Laboratory B Data of Tin-Coting weight
LabC<-c(0.19,0.25,0.27,0.24,0.18,0.26,0.28,0.24,0.25,0.20,0.21,0.19)#Laboratory C Data of Tin-Coting weight
LabD<-c(0.23,0.30,0.28,0.28,0.24,0.34,0.20,0.18,0.24,0.28,0.22,0.21)#Laboratory d Data of Tin-Coting weight
#Null hypothesis: mu1 = mu2 = mu3 = mu4 #Data produce dy 4 diff laboratory has  same mean 
#Alternative hypothesis: The mu's are not all equal
#mu=mean
#alpha=0.05
F0.05=qf(1-0.05,3,44)
cat("The F0.05 value is:",F0.05)
weights = c(LabA,LabB,LabC,LabD)#Single vactor of weights
Laboratory = rep(1:4,rep(12, 4))#Making the group in the single vextor
data = data.frame(weight =weights,Laboratory = factor(Laboratory))
fit = lm(weight ~ Laboratory , data)
anova(fit)
cat("Since the observed value of F exceeds value of F0.05, the null
hypothesis of equal mean weights is rejected at the 0.05 level of significance
We conclude that the laboratories are not obtaining consistent results")
