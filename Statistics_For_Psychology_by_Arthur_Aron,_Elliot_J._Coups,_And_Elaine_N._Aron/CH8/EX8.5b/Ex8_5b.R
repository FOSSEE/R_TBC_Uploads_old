                                 # Page no. : 302 - 303

# Worked out examples 2

score1 <- c(7, 6, 9, 7, 6)
n1 <- length(score1)   # Sample size 1
df1 <- n1 - 1   # Degree of freedom
m1 <- mean(score1)   # Mean
deviation1 <- score1 - m1
sq_dev1 <- deviation1 ** 2   # Squared deviation

data_frame1 <- data.frame(score1, deviation1, sq_dev1) 
View(data_frame1)

score2 <- c(5, 2, 4, 3, 6)
n2 <- length(score2)   # Sample size 2
df2 <- n2 - 1   # Degree of freedom
m2 <- mean(score2)   # Mean
deviation2 <- score2 - m2
sq_dev2 <- deviation2 ** 2   # Squared deviation

data_frame2 <- data.frame(score2, deviation2, sq_dev2)
View(data_frame2)

var1 <- sum(data_frame1$sq_dev1) / df1   # Variance 1
var2 <- sum(data_frame2$sq_dev2) / df2   # Variance 2

df <- df1 + df2   # Total degrees of freedom

p_var <- ((df1 / df) * var1) + ((df2 / df) * var2)   # Pooled variance

cat("Pooled variance is \n", round(p_var, 2))

d_var1 <- p_var / n1   # Variance of the distribution of means of sample 1

cat("Variance of the distribution of means of sample 1 is \n", round(d_var1, 2))

d_var2 <- p_var / n2   # Variance of the distribution of means of sample 2

cat("Variance of the distribution of means of sample 2 is \n", round(d_var2, 2))

diff_var <- d_var1 + d_var2   # Variance difference

cat("Variance difference is \n", diff_var)

diff_sd <- sqrt(diff_var)   # Standard deviation difference

cat("Standard deviation difference is \n", round(diff_sd, 2))

# Two - Tailed 

alpha <- 0.05   # 5% significance level

tval <- qt(1-alpha/2, df)
tval <- c(tval, -tval)   

t <- round((m1 - m2) / diff_sd, 2)   # t score

cat("t score is \n", t)

if(t > tval[1] || t < tval[2])
{
  cat("Reject null hypothesis")
} else
{
  cat("Cannot reject null hypothesis")
}