velocity<-c(20,60,100,140,180,220,260,300,340,380)
Evaporation<-c(0.18,0.37,0.35,0.78,0.56,0.75,1.18,1.36,1.17,1.65)
Dat<-data.frame(velocity,Evaporation)
fit<-lm(Evaporation~velocity)
summary(lm(Evaporation~velocity), data = Dat)
print("the 95% confidence limits are")
predict(fit,data.frame(velocity=c(0.1009737)),interval = "confidence",level = 0.95) 


