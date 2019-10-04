#scatterplot of the data
g <- read.csv("govtdebt.csv")
plot(g$Debt2006,g$Debt2007, xlab = "Debt 2006 (US$ billions)", ylab = "Debt 2007 (US$ billions)", xlim = c(0,500), ylim = c(0,500), pch= 19)