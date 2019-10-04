                                     # Page no. : 419 - 421

# worked out examples 1 

# Only (b) and (c) part

DF <- data.frame(Variable_A = c(rep("Level1", 8), rep("Level2", 8), rep("Level3", 8)),
                 Variable_B = c(rep(c("Level1", "Level2"), 12)),
                 Values = c(25, 19, 20, 24, 23, 21, 24, 20, 22, 24, 19, 18, 22, 22, 21, 20,
                            16, 18, 19, 21, 13, 16, 16, 17)
)

View(DF)   # Book's table is little bit different

# install.packages(ggplot2)
library(ggplot2)

ggplot(DF, aes(x = Variable_A, y = Values, fill = Variable_B)) + geom_bar(position = "dodge", 
                                                                          stat = "identity")
# Litte bit different barplot as compare with book's barplot

res <- aov(Values ~ Variable_B*Variable_A, data = DF)
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
df_numerator <- 2   # 3 - 1 = 1   (2 groups)
df_denomenator <- result$Df[4]

fval <- qf(0.95, df_numerator, df_denomenator)
fval <- round(fval, 2)

f1 <- result$`F value`[1]   # F value for variable B
f2 <- result$`F value`[2]   # F value for variable A
f3 <- result$`F value`[3]   # F value for variable B : variable A

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