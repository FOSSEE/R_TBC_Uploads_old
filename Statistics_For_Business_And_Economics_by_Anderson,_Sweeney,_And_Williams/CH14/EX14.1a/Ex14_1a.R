                                    # Page no. : 565 - 566

# Least Squares Method

restaurant <- c(1,2,3,4,5,6,7,8,9,10)
student_population <- c(2,6,8,8,12,16,20,20,22,26)
quartely_sales <- c(58,105,88,118,117,137,157,169,149,202)

DF <- data.frame(restaurant, student_population, quartely_sales)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2) 

ggplot(DF,aes(student_population, quartely_sales)) + geom_point() +
  labs(title = "Scatter Plot between Student Population and Quartely Sales",x = "Student
       Population (1000s)", y = "Quartely Sales ($1000s)")

                                  # Page no. : 567 - 569

regressor <- lm(quartely_sales ~ student_population, data = DF)
res <- summary(regressor)

res

b1 <- res$coefficients[[2]]

b0 <- res$coefficients[[1]]

cat("Estimated Regression Equation is y_cap =",b0,"+",b1,"x")

ggplot(DF,aes(student_population, quartely_sales)) + geom_point() + 
  geom_smooth(method='lm', se = F) + labs(title = "Scatter Plot between Student Population 
and Quartely Sales",x = "Student Population (1000s)", y = "Quartely Sales ($1000s)")


