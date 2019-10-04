                                  # Page no. : 615

# Detecting Outliers

x <- c(1,1,2,3,3,3,4,4,5,6)
y <- c(45,55,50,75,40,45,30,35,25,15)

DF <- data.frame(x,y)

ggplot(DF,aes(x, y)) + geom_point()+ geom_smooth(method = "lm", se = F) +
labs(title = "Scatter Plot between  x and Y Showing Outlier", x = "X", y = "Y")