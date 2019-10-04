#Scatterplot with a straight line.
b <- read.csv("spam_botnets.csv")
plot(b$Bots,b$Spams_per_day, xlab = "Bots (thousands)", ylab = "Spams per day(billions)", xlim = c(0,400), pch= 19)
abline(lm(b$Spams_per_day~b$Bots, data= b), col= "red") # draws a regression line showing relation between the variables.