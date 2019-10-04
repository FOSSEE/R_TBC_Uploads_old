                                    # Page no. : 351 - 354

# Advanced Topic: The Structural Model in the Analysis of Variance an example

# Criminal Record Group

rating1 <- c(10, 7, 5, 10, 8)

# Clean Record Group

rating2 <- c(5, 1, 3, 7, 4)

# No Information Group

rating3 <- c(4, 6, 9, 3, 3)

DF <- data.frame(rating1, rating2, rating3)

# Direct Method

k <- ncol(DF)   # Number of Treatments
n <- nrow(DF)   # Number of Observations for each Treatment
N <- n * k   # Total Observations

x <- c(t(as.matrix(DF)))
f <- c("r_1", "r_2", "r_3")
tm <- gl(k, 1, n*k, factor(f))
result <- anova(lm(x ~ tm))   # Similar to aov(x ~ tm)

result

ss_total <- round(sum(result$`Sum Sq`), 2)   # Total sum of squared deviation

cat("Total sum of squared deviation is", ss_total)

ss_within <- round(result$`Sum Sq`[2], 2)   # Sum of squared deviation within-groups

cat("Sum of squared deviation within-groups is", ss_within)

ss_between <- round(result$`Sum Sq`[1], 2)   # Sum of squared deviation between-groups

cat("Sum of squared deviation between-groups is", ss_between)

df_total <- sum(result$Df)   # Total degrees of freedom

cat("Total degrees of freedom is", df_total)

df_within <- result$Df[2]   # Degree of freedom within-groups

cat("Degree of freedom within-groups is", df_within)

df_between <- result$Df[1]   # Degree of freedom between-groups

cat("Degree of freedom between-groups is", df_between)

var_within <- round(result$`Mean Sq`[2], 2)   # Variance within-groups

cat("Variance within-groups is", var_within)

var_between <- round(result$`Mean Sq`[1], 2)   # Variance between-groups

cat("Variance between-groups is", var_between)

f <- round(result$`F value`[1], 2)   # F value (Ratio)

cat("F value (Ratio) is", f)