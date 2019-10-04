#Correlation between the variables and the linear relationship.
wm <- read.csv("worldmarket.csv")
cor(wm$Assets,wm$GDP) #finds the correlation between the 2 variables.
plot(wm$GDP, wm$Assets, xlab = "GDP per capita", ylab = "Net assets per capita", xlim = c(30,70), ylim = c(100,400), pch= 19)
model1 <- lm(wm$Assets ~ wm$GDP, data = wm)#linear regression model.
abline(model1, col="red") #plots line showing linear relationship.