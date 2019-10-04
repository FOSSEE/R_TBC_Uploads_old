                                     # Page no. : 654 - 655

# Multiple Coefficient of Determination

driving_assignment <- c(1,2,3,4,5,6,7,8,9,10)
x1 <- c(100,50,100,100,50,80,75,65,90,90)   # Miles Traveled
x2 <- c(4,3,4,2,2,2,3,4,3,2)   # Number of Deliveries
y <- c(9.3,4.8,8.9,6.5,4.2,6.2,7.4,6.0,7.6,6.1)   # Travel Time (hours)

DF <- data.frame(driving_assignment, x1, x2, y)

model <- lm(y ~ x1 + x2, data = DF)
summ <- summary(model)

mean_y <- mean(DF$y)   # Mean of Travel time

predicted_travel_time <- round(predict(model), 2)

DF <- cbind(DF, predicted_travel_time)

SSR <- sum((DF$predicted_travel_time - mean_y)**2)   # Sum of Squares due to Regression

cat("Value of SSR is",SSR)

SSE <- sum((DF$y - DF$predicted_travel_time)**2)   # Sum of Squares due to Error

cat("Value of SSE", SSE)

SST <- SSR + SSE   # Total Sum of Squares

cat("Value of SST", SST) 

r_sq <- summ$r.squared  # Multiple Coefficient of Determination

cat("Value of Multiple Coefficient of Determination is", r_sq)

adj_r_sq <- summ$adj.r.squared   # Adjusted Multiple Coefficient of Determination

cat("Value of Adjusted Multiple Coefficient of Determination is", adj_r_sq)