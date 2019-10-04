#A compound is produced for a coating process.The Two Facctor Add i.e Addactivity and Tem to get best yield
Run<-c(1,2,3,4,5,6,7,8,9)
Addactive<-c(0,70,35,0,70,70,0,35,35)
Tem<-c(100,100,140,180,180,140,140,100,180)
yield<-c(81,65,92,50,75,75,68,90,77)
Dat<-data.frame(cons,Addactive,Tem,yield)
Dat
fit=lm(yield~Addactive+Tem+I(Addactive^2)+I(Tem^2)+Addactive*Tem,data=Dat)
fit
#Estimated Regression Coefficients for Yield
summary(fit)
# from fit estimated response surface is
cat("y =  60.2639 + 0.0417*x1 + 0.5354*x2 - 0.0141*x1^2 - 0.0033*x2^2 + 0.0073*x^1*x^2")
x1 = 33
x2 = 117
y =  60.2639 + 0.0417*x1 + 0.5354*x2 - 0.0141*x1^2 - 0.0033*x2^2 + 0.0073*x^1*x^2
y
cat("It is usually not reasonable to drop a linear term when the associated square term is
in the response surface model")
