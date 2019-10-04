                                    # Page no. : 406 - 407

# Table for a Two-way Analysis of Variance

DF <- data.frame(Sensitivity = c(rep("Not High", 10), rep("High", 10)),
                 Test_Difficulty = c(rep(c("Easy", "Hard"), 10)),
                 Value = c(2.63, 2.69, 2.53, 2.31, 2.25, 2.45, 2.22, 2.80, 2.52, 2.55, 2.06, 
                           3.21, 2.32, 3.21, 2.04, 2.77, 2.31, 2.83, 2.22, 3.03)
                 )

View(DF)    # Table no. 10-10   (Table is different as compared to book)

res <- aov(Value ~ Test_Difficulty*Sensitivity, data = DF)
result <- round(anova(res), 2)

# Table no. 10-11

result   # Values differ with book's values (table values)

# Below results are in table no. 10-10

ss_total <- round(sum(result$`Sum Sq`), 2)   # Total sum of squared deviation

cat("Total sum of squared deviation is \n", ss_total)

ss_within <- round(result$`Sum Sq`[4], 2)   # Sum of squared deviation within-groups

cat("Sum of squared deviation within-groups is \n", ss_within)

ss_interaction <- round(result$`Sum Sq`[3], 2)   # Sum of squared deviation of interaction

cat("Sum of squared deviation of interaction is \n", ss_interaction)

ss_rows <- round(result$`Sum Sq`[2], 2)   # Sum of squared deviation of rows

cat("Sum of squared deviation of rows is \n", ss_rows)

ss_columns <- round(result$`Sum Sq`[1], 2)   # Sum of squared deviation of columns

cat("Sum of squared deviation of columns is \n", ss_columns)

alpha <- 0.05   # 5% significance level
df_numerator <- 1   # 2 - 1 = 1   (2 groups)
df_denomenator <- result$Df[4]

fval <- qf(0.95, df_numerator, df_denomenator)
fval <- round(fval, 2)

# Note that fval is same for sensitivity, test difficulty and for interaction effect

cat("F value is \n", fval)

f1 <- result$`F value`[1]   # F value for test difficulty
f2 <- result$`F value`[2]   # F value for sensitivity
f3 <- result$`F value`[3]   # F value for test difficulty : sensitivity

if(f1 >= fval)
{
  cat("Reject null hypothesis for test difficulty")
} else {
  cat("Cannot reject null hypothesis for test difficulty")
}

if(f2 >= fval)
{
  cat("Reject null hypothesis for sensitivity")
} else {
  cat("Cannot reject null hypothesis for sensitivity")
}

if(f3 >= fval)
{
  cat("Reject null hypothesis for test difficulty : sensitivity")
} else {
  cat("Cannot reject null hypothesis for test difficulty : sensitivity")
}