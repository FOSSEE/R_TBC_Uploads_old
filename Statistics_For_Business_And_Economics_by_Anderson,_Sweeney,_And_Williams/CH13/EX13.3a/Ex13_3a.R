                                    # Page no. : 525 - 526

# Multiple Comparison Procedures : Fisher's LSD

method_A <- c(58,64,55,66,67)
method_B <- c(58,69,71,64,68)
method_C <- c(48,57,59,47,49)

DF <- data.frame(method_A,method_B,method_C)

k <- ncol(DF)   # Number of Treatments
n <- nrow(DF)   # Number of Observations for each Treatment
N <- n * k   # Total Observations

x <- c(t(as.matrix(DF)))
f <- c("method_A", "method_B", "method_C")
tm <- gl(k, 1, n*k, factor(f))
result <- anova(lm(x ~ tm))   # Similar to aov(x ~ tm)

# Approach - 1

# Fisher's LSD Procedure for Method A and Method B

t_value1 <- (mean(DF$method_A) - mean(DF$method_B)) / sqrt(result$`Mean Sq`[2] * ((1 / n)
                                                                              + (1 / n)))

t_value1 <- round(t_value1, 2)

df <- N - k   # Degrees of Freedom

# Two Tail Test

# P-value Approach

alpha <- 0.05

pval <- 2 * pt(t_value1, df, lower.tail = T)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
}

tval <- qt(0.975,df)    # alpha/2  = 0.05 / 2  = 0.025 = (1 - 0.025) = 0.975
tval <- round(tval, 3)

LSD <- tval * sqrt(result$`Mean Sq`[2] * ((1 / n) + (1 / n)))
LSD <- round(LSD, 2)

# Approach - 2

# Fisher's LSD Procedure for Method A and Method C

diff_A_C <- mean(DF$method_A)- mean(DF$method_C)

if(diff_A_C > LSD)
{
  cat("Since the value of difference", diff_A_C,"is greater than LSD",LSD,"therefore we will reject 
      Null Hypothesis")
} else{
  cat("Since the value of difference", diff_A_C,"is less than LSD",LSD,"therefore we cannot reject 
      Null Hypothesis")
}

# Fisher's LSD Procedure for Method B and Method C

diff_B_C <- mean(DF$method_B)- mean(DF$method_C)

if(diff_B_C > LSD)
{
  cat("Since the value of difference", diff_B_C,"is greater than LSD",LSD,"therefore we will reject 
      Null Hypothesis")
} else{
  cat("Since the value of difference", diff_B_C,"is less than LSD",LSD,"therefore we cannot reject 
      Null Hypothesis")
}




















