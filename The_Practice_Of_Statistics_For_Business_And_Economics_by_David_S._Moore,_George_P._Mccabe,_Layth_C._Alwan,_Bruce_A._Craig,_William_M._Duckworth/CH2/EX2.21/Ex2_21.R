#Residual Plot for Spam Botnets.
b <- read.csv("spam_botnets.csv")
model1<- lm(b$Spams_per_day~b$Bots)
plot(b$Bots,residuals(model1), xlab = "Bots (thousands)", ylab = "Residuals", xlim = c(0,400))
#this will plot Bots vs residuals scatterplot.
abline(0,0)
