                                     # Page no. : 646 - 647

# Least Squares Method

driving_assignment <- c(1,2,3,4,5,6,7,8,9,10)
x <- c(100,50,100,100,50,80,75,65,90,90)   # Miles Traveled
y <- c(9.3,4.8,8.9,6.5,4.2,6.2,7.4,6.0,7.6,6.1)   # Travel Time (hours)

DF <- data.frame(driving_assignment, x ,y)

# Install Library if not installed

# install.packages("ggpolt2")

# Import Library

library(ggplot2) 

ggplot(DF,aes(x, y)) + geom_point() +labs(title = "Scatter Plot between Miles Traveled 
  and Travel Time", x = "Miles Traveled", y = "Travel Time in Hours")

                                   # Page no. : 647 - 648

model <- lm(y ~ x, data = DF)
summ <- summary(model)
summ

b0 <- model$coefficients[1]
b1 <- model$coefficients[2]

cat("Linear Regression Equation is y_cap =",b0,"+",b1,"x1")

# F Test

fval <- summ$fstatistic[1]

# Upper Tail Test

# P-value Approach

alpha <- 0.05

pval <- summ$coefficients[8]  # P-value

if(pval >= alpha)
{
  cat("Since pval",pval,"is greater than or equal to 0.01 therefore we cannot reject the Null Hypothesis")
} else{
  cat("Since pval",pval,"is less than 0.05 therefore we can reject the Null Hypothesis")
  
}

