#a better smooth for the debt data.
g <- read.csv("govtdebt.csv")
plot(g$Debt2006,g$Debt2007, xlab = "Debt 2006 (US$ billions)", ylab = "Debt 2007 (US$ billions)", xlim = c(0,500), ylim = c(0,500), pch= 19)
lines(lowess(g$Debt2006,g$Debt2007),col="red") #used to smooth the regression line.