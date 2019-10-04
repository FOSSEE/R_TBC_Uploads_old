                                      # Page no. : 411 - 413

# How are you doing?

# 5th Question

DF <- data.frame(Participant = LETTERS[1:8],
                 Length_condition = c(rep("Short", 4), rep("Long", 4)),
                 Vividness_condition = c(rep(c("Low", "High"), 4)),
                 Number_recalled = c(6, 9, 4, 5, 2, 1, 4, 1)
                )

View(DF)   # Book's table is little bit different

res <- aov(Number_recalled ~ Vividness_condition*Length_condition, data = DF)
result <- anova(res)
result   

ss_total <- round(sum(result$`Sum Sq`), 2)   # Total sum of squared deviation

cat("Total sum of squared deviation is", ss_total)

ss_within <- round(result$`Sum Sq`[4], 2)   # Sum of squared deviation within-groups

cat("Sum of squared deviation within-groups is", ss_within)

ss_interaction <- round(result$`Sum Sq`[3], 2)   # Sum of squared deviation of interaction

cat("Sum of squared deviation of interaction is", ss_interaction)

ss_rows <- round(result$`Sum Sq`[2], 2)   # Sum of squared deviation of rows

cat("Sum of squared deviation of rows is", ss_rows)

ss_columns <- round(result$`Sum Sq`[1], 2)   # Sum of squared deviation of columns

cat("Sum of squared deviation of columns is", ss_columns)

alpha <- 0.05   # 5% significance level
df_numerator <- 1   # 2 - 1 = 1   (2 groups)
df_denomenator <- result$Df[4]

fval <- qf(0.95, df_numerator, df_denomenator)
fval <- round(fval, 2)

f1 <- result$`F value`[1]   # F value for vividness condition
f2 <- result$`F value`[2]   # F value for length condition
f3 <- result$`F value`[3]   # F value for vividness condition : length condition

if(f1 >= fval)
{
  cat("Reject null hypothesis")
} else {
  cat("Cannot reject null hypothesis")
}

if(f2 >= fval)
{
  cat("Reject null hypothesis")
} else {
  cat("Cannot reject null hypothesis")
}

if(f3 >= fval)
{
  cat("Reject null hypothesis")
} else {
  cat("Cannot reject null hypothesis")
}