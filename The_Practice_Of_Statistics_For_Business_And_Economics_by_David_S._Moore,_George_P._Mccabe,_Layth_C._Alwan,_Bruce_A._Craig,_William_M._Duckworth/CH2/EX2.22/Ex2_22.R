#Srizbi is influential.Effect on the regression model on removing a particular data.
b <- read.csv("spam_botnets.csv")
r <- b[-c(1),]# removing first row from the data frame b.
plot(b$Bots,b$Spams_per_day, xlab = "Bots (thousands)", ylab = "Spams per day(billions)", xlim = c(0,400))
model1<- lm(b$Spams_per_day~b$Bots) #linear regression with data of Srizbi.
model2 <- lm(r$Spams_per_day~r$Bots) #linear regression after removing Srizbi.
abline(model1, col="red")#regression line for model1.
abline(model2, lwd =2, lty=2) #regression line for model2.
