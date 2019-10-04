                                        # Page no. : 576 - 580

# Coefficient of Determination

restaurant <- c(1,2,3,4,5,6,7,8,9,10)
student_population <- c(2,6,8,8,12,16,20,20,22,26)
quartely_sales <- c(58,105,88,118,117,137,157,169,149,202)

DF <- data.frame(restaurant, student_population, quartely_sales)

regressor <- lm(quartely_sales ~ student_population, data = DF)
res <- summary(regressor)

table <- anova(regressor)

SSE <- table$`Sum Sq`[2]   # Sum of Squares due to Error

cat("Value of SSE is",SSE)

SSR <- table$`Sum Sq`[1]   # Sum of Squares due to Regression

cat("Value of SSR is",SSR)

SST <- SSE + SSR   # Total Sum of Squares

cat("Value of SST is",SST)

r_sq <- res$r.squared   # Coefficient of Determination

corrcoeff <- sqrt(r_sq)   # Correlation Coefficient 

cat("Value of Coefficient of Determination is",r_sq)
cat("Value of correlation Coefficient is",corrcoeff)


