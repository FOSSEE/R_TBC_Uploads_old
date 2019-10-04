                                        # Page no. : 362

# Worked out examples 6

# Treatment A

x1 <- c(8, 13, 10, 9)

# Treatment B

x2 <- c(7, 3, 8)

# Treatment C

x3 <- c(6, 4, 2)

DF <- data.frame( Y=c(x1, x2, x3), Treatment =factor(rep(c("x1", "x2", "x3"), 
            times=c(length(x1), length(x2), length(x3)))))

View(DF)

res <- aov(Y~Treatment, data=DF)
result <- anova(res)
result

df_total <- sum(result$Df)   # Total degree of freeodom

cat("Total degrees of freedom is", df_total)

df_within <- result$Df[2]   # Degree of freedom within-groups

cat("Degree of freedom within-groups is", df_within)

df_between <- result$Df[1]   # Degree of freedom between-groups

cat("Degree of freedom between-groups is", df_between)

alpha <- 0.05   # 5% significance level

f <- round(result$`F value`[1], 2)   # F value (Ratio)

cat("F value (Ratio) is", f)

ss_total <- round(sum(result$`Sum Sq`), 2)   # Total sum of squared deviation

cat("Total sum of squared deviation is", ss_total)

ss_within <- round(result$`Sum Sq`[2], 2)   # Sum of squared deviation within-groups

cat("Sum of squared deviation within-groups is", ss_within)

ss_between <- round(result$`Sum Sq`[1], 2)   # Sum of squared deviation between-groups

cat("Sum of squared deviation between-groups is", ss_between)

fval <- qf(0.95, df_between, df_within)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2)

cat("Cutoff F for the 0.05 significance level is", fval)

if(f >= fval)
{
  cat("Reject null hypothesis")
} else {
  cat("Cannot reject null hypothesis")
}