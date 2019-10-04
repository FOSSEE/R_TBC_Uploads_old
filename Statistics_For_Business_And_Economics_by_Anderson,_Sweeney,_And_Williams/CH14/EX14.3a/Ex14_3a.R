                                      # Page no. : 485 - 489

# Test of Significance

restaurant <- c(1,2,3,4,5,6,7,8,9,10)
student_population <- c(2,6,8,8,12,16,20,20,22,26)
quartely_sales <- c(58,105,88,118,117,137,157,169,149,202)

DF <- data.frame(restaurant, student_population, quartely_sales)

regressor <- lm(quartely_sales ~ student_population, data = DF)
res <- summary(regressor)

standard_error_MSE <- res$sigma   

cat("Value of square root of MSE is",standard_error_MSE)

b1 <- res$coefficients[2]

tval <- res$coefficients[6]


# T Test

# Two Tail Test

# P-value Approach

pval <- round(res$coefficients[8],3)

if(pval >= 0.01)
{
  cat("Since pval",pval,"is greater than or equal to 0.01 therefore we cannot reject the Null Hypothesis")
} else{
  cat("Since pval",pval,"is less than 0.01 therefore we can reject the Null Hypothesis")
  
}

# F Test

test <- anova(regressor)

fval <- test$`F value`

pval <- round(test$`Pr(>F)`[1],3)   # P value is extremely small ie negligible to 0

if(pval >= 0.01)
{
  cat("Since pval",pval,"is greater than or equal to 0.01 therefore we cannot reject the Null Hypothesis")
} else{
  cat("Since pval",pval,"is less than 0.01 therefore we can reject the Null Hypothesis")
  
}

# Confidence Interval

confidence <- confint(regressor, "student_population", level = 0.99)
IE1 <- confidence[1]
IE2 <- confidence[2]

cat("The 99 %  confidence interval is ",IE1, "to", IE2)
