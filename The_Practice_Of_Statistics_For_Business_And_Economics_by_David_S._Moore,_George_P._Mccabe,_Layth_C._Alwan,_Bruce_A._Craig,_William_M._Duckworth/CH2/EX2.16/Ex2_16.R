#GDP and assets results using softwares
wm <- read.csv("worldmarket.csv")
model1 <- lm(wm$Assets ~ wm$GDP, data = wm)# making linear regression model of the data.
summary(model1) #summary of the linear model.