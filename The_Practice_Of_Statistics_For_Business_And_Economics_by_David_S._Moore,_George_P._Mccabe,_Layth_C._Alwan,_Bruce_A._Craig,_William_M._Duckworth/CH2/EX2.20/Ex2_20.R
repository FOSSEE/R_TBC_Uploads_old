#Spam Botnets Residuals.
b <- read.csv("spam_botnets.csv")
model1<- lm(b$Spams_per_day~b$Bots)
residuals(model1)#gives the residual values.