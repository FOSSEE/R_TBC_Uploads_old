salary <- c(60710,NA,63160,63210,64140,65760,65590,59510,60440,61340,61760,62750,63200,NA)
x1 <- c(1,2,3,3,4,5,5,1,2,3,3,4,5,5)
x2 <- c(1,1,1,1,1,1,1,0,0,0,0,0,0,0)
df <- data.frame(salary, x1, x2)
df
model <- lm(salary ~ x1 * x2, data = df)
summary(model)
model
model1 <- aov(model, data = df)
model1
summary(model1)
par(mfrow=c(1,2))
plot(model, pch=16, which=1)
plot(model, pch=16, which=2)
#the textbook's f-value from anova table is wrong and rest all of the values are correct

