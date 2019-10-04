                                   # Page no. : 518

# Analysis of Variance and the Completely Randomized Design

method_A <- c(58,64,55,66,67)
method_B <- c(58,69,71,64,68)
method_C <- c(48,57,59,47,49)

DF <- data.frame(method_A,method_B,method_C)

k <- ncol(DF)   # Number of Treatments
n <- nrow(DF)   # Number of Observations for each Treatment
N <- n * k   # Total Observations

df_numerator <- k - 1   # Degrees of Freedom for Numerator
df_denomenator <- N - k   # Degrees of Freedom for Denomenator

alpha <- 0.05

x <- c(t(as.matrix(DF)))
f <- c("method_A", "method_B", "method_C")
tm <- gl(k, 1, n*k, factor(f))
result <- anova(lm(x ~ tm))   # Similar to aov(x ~ tm)

result

# Upper Tail Test

# Critical Value Approach

fval <- qf(0.95,df_numerator, df_denomenator)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2)

fvalue <- result$`F value`[1]

if(fvalue >= fval)
{
  cat("Since F value",fvalue,"is greater than or equal to F value",fval,
      "therefore we will reject Null Hypothesis")
} else {
  cat("Since fvalue value",fvalue,"is less than fvalue value",fval,
      "therefore we cannot reject Null Hypothesis")
}

# P-value Approach

pval <- pf(fvalue,df_numerator,df_denomenator,lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
}
