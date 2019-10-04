velocity<-c(20,60,100,140,180,220,260,300,340,380)
Evaporation<-c(0.18,0.37,0.35,0.78,0.56,0.75,1.18,1.36,1.17,1.65)
#Null hypothesis: beta= 0
#Alternative hypothesis: beta!= 0
loc=0.05
t=qt(1-0.025,8)
#Criterion: Reject the null hypothesis if t < -2.306 or t > 2.306, where 2.306
#is the value of t0.025
betabar=0.003829
beta=0
Sxx=132000
Se=0.1591
t=(betabar-beta)*sqrt(Sxx)/Se
t
cat("Decision: Since t = 8.744 exceeds 2.306, the null hypothesis must be rejected,
we conclude that there is a relationship between air velocity and the average")