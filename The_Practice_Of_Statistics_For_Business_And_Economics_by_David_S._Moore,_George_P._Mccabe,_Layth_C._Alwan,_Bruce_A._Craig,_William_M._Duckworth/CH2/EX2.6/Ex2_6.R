#Debt of countries with a smooth fit on the plot.
require(graphics)
g<- read.csv("govtdebt.csv")
with(g, scatter.smooth(g$Debt2006,g$Debt2007))

