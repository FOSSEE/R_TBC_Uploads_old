#Find 94% Bonferroni SimultaneousConfidence interval
ED=c(0.99,1.19,0.79,0.95,0.90)
MD=c(1.11,1.53,1.37,1.24,1.42)
PF=c(0.83,0.68,0.94,0.86,0.57)
Strength<-c(ED,MD,PF)
Resin<-rep(1:3,rep(5,3))
Dat = data.frame(Strength=Strength, Resin = factor(Resin))
summary(fm1<-aov(lm(Strength~Resin, data=Dat)))
TukeyHSD(fm1,'Resin', conf.level=0.94,ordered = TRUE)


