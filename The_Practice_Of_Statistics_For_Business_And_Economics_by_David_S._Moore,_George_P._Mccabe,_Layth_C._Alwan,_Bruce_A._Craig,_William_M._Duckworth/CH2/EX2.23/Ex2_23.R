#Effects on Correlation values on removing particular Data.
b <- read.csv("spam_botnets.csv")
r <- b[-grep("Srizbi",b$Botnets),] #removing Srizbi's data.
t <- b[-grep("Bobax",b$Botnets),] #removing Bobax's data.
cor(b$Spams_per_day,b$Bots) #Correlation of all the 10 values.
cor(r$Spams_per_day,r$Bots) #Correlation after removing Srizbi's data.
cor(t$Spams_per_day,t$Bots) #Correlation after removing Babox's data.