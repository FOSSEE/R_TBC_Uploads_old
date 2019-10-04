                                    # Page no. : 718 - 721

# Interaction

price <- c(2.00, 2.50, 3.00, 2.00, 2.50, 3.00, 2.00, 2.50, 3.00, 2.00, 2.50, 3.00, 
           2.00, 2.50, 3.00, 2.00, 2.50, 3.00, 2.00, 2.50, 3.00, 2.00, 2.50, 3.00)
advertising <- c(50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 100, 100, 100, 100, 100,
                 100, 100, 100, 100, 100, 100, 100)
sales <- c(478, 373, 335, 473, 358, 329, 456, 360, 322, 437, 365, 342, 810, 653, 345, 832, 641,
           372, 800, 620, 390, 790, 670, 393)

DF <- data.frame(price, advertising, sales)

# Install Library if not install

# install.packages("dplyr")

# Import Library

library(dplyr)

DF %>% group_by(price,advertising) %>% summarize(Average=mean(sales))

model <- lm(sales ~ price + advertising + (price * advertising), data = DF)
res <- summary(model)

b0 <- res$coefficients[1]
b1 <- res$coefficients[2]
b2 <- res$coefficients[3]
b3 <- res$coefficients[4]

cat("Equation is sales = ", b0, "+", b1, "Price +",b2, "AdvExp +", b3, "PriAdv")