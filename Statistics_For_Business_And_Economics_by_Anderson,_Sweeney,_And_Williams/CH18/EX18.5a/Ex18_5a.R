                                    # Page no. : 821 - 822

# Seasonality Without Trend

year_quart <- c("Y1 Q1", "Y1 Q2", "Y1 Q3", "Y1 Q4", "Y2 Q1", "Y2 Q2", "Y2 Q3", "Y2 Q4", "Y3 Q1", 
                "Y3 Q2", "Y3 Q3", "Y3 Q4", "Y4 Q1", "Y4 Q2", "Y4 Q3", "Y4 Q4", "Y5 Q1", "Y5 Q2",
                "Y5 Q3", "Y5 Q4")  # Years and Quarters
sales <- c(125, 153, 106, 88, 118, 161, 133, 102, 138, 144, 113, 80, 109, 137, 125, 109, 130, 165,
           128, 96)

DF <- data.frame(year_quart, sales)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year_quart,sales, group = 1)) + geom_line() + geom_point() + ylim(c(0,180)) +
  labs(title = "Years/quart V/S Sales Time Series Plot", x = "Year/Quarter", y = "Sales")


q1 <- c(1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0)
q2 <- c(0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0)
q3 <- c(0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0)

DF <- cbind(DF,q1,q2,q3)

regressor <- lm(sales ~ q1 + q2 + q3, data = DF)
summary(regressor)

b0 <- regressor$coefficients[1]
b1 <- regressor$coefficients[2]
b2 <- regressor$coefficients[3]
b3 <- regressor$coefficients[4]

cat("Equation is sales = ",b0,"+",b1,"Qtr1 +",b2,"Qtr2 +",b3,"Qtr3")