#Predicting the value.
target <- read.csv('target.csv') #original dataset
plot(target$Year,target$Stores, xlab = "Year", ylab = "Stores", xlim = c(1988,2010), ylim = c(400,1800)) #plot of original dataset.
tar1 <- target[-grep(2008,target$Year),] #new dataset after removing the rows with value 2008 for variable Year.
model1<- lm(tar1$Stores~tar1$Year) #linear regression model for tar1.
abline(model1, col="red") # plotting the regression line on the plot. 