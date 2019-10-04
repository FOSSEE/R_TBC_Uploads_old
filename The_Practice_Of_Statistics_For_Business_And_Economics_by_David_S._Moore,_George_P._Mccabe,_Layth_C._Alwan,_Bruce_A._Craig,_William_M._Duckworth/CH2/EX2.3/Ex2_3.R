#Scatterplot of the data stored in csv file. 
b <- read.csv("spam_botnets.csv") #reads data from the csv file and stores the data in the variable named b.
plot(b$Bots,b$Spams_per_day, xlab = "Bots (thousands)", ylab = "Spams per day(billions)", xlim = c(0,400)) #plots the scatterplot.