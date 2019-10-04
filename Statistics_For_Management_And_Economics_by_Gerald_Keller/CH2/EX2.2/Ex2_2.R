# Statistics for Management and Economics by Gerald Keller
# Chapter 2: Graphical Descriptive Techniques I
# Example 2.2 on Pg 24
# Energy Consumption in the United States in 2007 


data1_source <- c("Petroleum", "NaturalGas", "Coal", "Nuclear", "Hydroelec", 
                  "Wood", "Biofuels", "Wind", "Waste", "Geotherm", "Solar")
data1_BTU <- c(39.77, 23.64, 22.8, 8.42, 2.45, 2.14, 1.02, 0.34, 0.43, 0.35, 0.08)

dev.off()

# the appropriate graphical technique, in describing the proportion of total energy consumption by all sources, 
# is a pie-chart.
# pie-chart using pie() function
colors <- c("beige", "dodgerblue", "hotpink4", "navy", "lawngreen", "lightslategrey", "purple3", "red", "yellow", "black", "orange")
lbls <- paste(data1_BTU,"%", sep="")
pie_legend <- paste(data1_source, lbls)
pie(data1_BTU, main ="Pie Chart of Energy Consumption", cex=0.7, col=colors, labels = NA)
legend(x=0.75,y=0.75,legend =pie_legend, fill=colors, bty="n", cex=0.6)


#End
