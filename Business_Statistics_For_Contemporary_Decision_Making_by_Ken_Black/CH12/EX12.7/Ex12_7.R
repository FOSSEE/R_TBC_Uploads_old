# Regression Analysis Example :

Month <- c("January","Feburary","March","April","May","June","July","August")
Sales <- c(32569,32274,32583,32304,32149,32077,31989,31977)
Month_number <- c(1,2,3,4,5,6,7,8)
df <- data.frame(Month,Sales,Month_number)
df

library("ggplot2")
ggplot(df, aes(x=Month, y=Sales)) + geom_point(size=1)

# Regression Analysis: Sales versus Month
a <- lm(Sales~Month_number, data= df)
a
summary(a)

# y_cap = 32,628.2 - 86.21*x :
x =10
y_cap = 32628.2 - 86.21*x 
y_cap