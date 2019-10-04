                                    # Page no. : 246 - 247

# Normal Probability Distribution

mean <- 36500
sigma <- 5000  
x <- 40000
probability <- pnorm(40000, mean=36500, sd=5000, lower.tail= F)

cat("The probability of x exceed 40000 is",probability)

                                   # Page no. : 247

probability <- 0.10
z_value <- round(qnorm(probability), 2)   # Round it to 2 decimal place
x <- (sigma * z_value) + mean

cat("Value of x for not more than 10% of area is selected is",x)