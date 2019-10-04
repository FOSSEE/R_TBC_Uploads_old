                                    # Page no. : 605 - 609

# Residual Analysis : Validating Model Assumptions

x <- c(2,6,8,8,12,16,20,20,22,26)   # Student Population
y <- c(58,105,88,118,117,137,157,169,149,202)   # Sales

estimated_sales <- 60 + (5 * x)   # Regression Equation  = 60 + 5 x

residuals <- y - estimated_sales

DF <- data.frame(x, y, estimated_sales, residuals)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(x, residuals)) + geom_point() + geom_hline(yintercept = 0, linetype=2) + 
labs(title = "Residual Plot", x = "X", y = "Residual")

ggplot(DF,aes(estimated_sales, residuals)) + geom_point() + geom_hline(yintercept = 0, 
        linetype=2) + labs(title = "Plot between Estimated Sales and Residuals", x = 
                             "Estimated Sales", y = "Residual")
   