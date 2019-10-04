                                      # Page no. : 660 - 662

# Testing for Significance

driving_assignment <- c(1,2,3,4,5,6,7,8,9,10)
x1 <- c(100,50,100,100,50,80,75,65,90,90)   # Miles Traveled
x2 <- c(4,3,4,2,2,2,3,4,3,2)   # Number of Deliveries
y <- c(9.3,4.8,8.9,6.5,4.2,6.2,7.4,6.0,7.6,6.1)   # Travel Time (hours)

DF <- data.frame(driving_assignment, x1, x2, y)

model <- lm(y ~ x1 + x2, data = DF)
summ <- summary(model)

SSR <- 21.6252    # Sum of Squares due to Regression 

SSE <- 2.2952    # Sum of Squares due to Error

n <- nrow(DF)   # Total Observations

p <- 2   # Number of Independent Variables

MSR <- SSR / p   # Mean Square due to Regression

cat("Value of MSR is",MSR)

MSE <- SSE / (n - p - 1)   # Mean Square due to Error

# F Test

fval <- summ$fstatistic[1]

alpha <- 0.01

# Upper Tail Test

# P-value Approach

pval <- summ$coefficients[11]

if(pval >= alpha)
{
  cat("Since pval",pval,"is greater than or equal to 0.01 therefore we cannot reject the Null Hypothesis")
} else{
  cat("Since pval",pval,"is less than 0.01 therefore we can reject the Null Hypothesis")
  
}

s <- summ$sigma   # Standard Error of the Estimate

cat("Value of Standard Error of the Estimate is",s)

coeff <- as.data.frame(summ$coefficients)

b1 <- coeff$Estimate[2]
b2 <- coeff$Estimate[3]

s1 <- coeff$`Std. Error`[2]   # Standard Error of the x1 (Miles Traveled)
s2 <- coeff$`Std. Error`[3]   # Standard Error of the x2 (Number of Deliveries)

df <- n - p - 1   # Degrees of Freedom

# T Test

tval1 <- round(b1 / s1, 3)
tval2 <- round(b2 / s2, 3)

# Upper Tail Test

# P-value Approach

pval1 <- round(pt(tval1, df, lower.tail = F),5)
pval2 <- round(pt(tval2, df, lower.tail = F),5)


if(pval1 >= alpha && pval2 >= alpha)
{
  cat("Since pval1",pval1,"and pval2",pval2,"is greater than or equal to 0.01 therefore we cannot reject the 
      Null Hypothesis")
} else{
  cat("Since pval1",pval1,"and pval2",pval2,"is less than 0.01 therefore we can reject the Null Hypothesis")
  
}

