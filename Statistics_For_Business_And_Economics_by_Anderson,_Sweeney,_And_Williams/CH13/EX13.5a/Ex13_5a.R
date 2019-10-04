                                    # Page no. : 542

# Factorial Experiment

program <- c("Three-hour review", "Three-hour review", "One-day program", "One-day program", "10-week course",
             "10-week course")
business <- c(500, 580, 460, 540, 560, 600)
engineering <- c(540, 460, 560, 620, 600, 580)
arts_and_science <- c(480, 400, 420, 480, 480, 410)

DF <- data.frame(program, business, engineering, arts_and_science)

a <- 3   # Number of levels in Factor A (Unique Programs)
b <- 3   # Number of levels in Factor B (Columns Except program)
r <- 2   # Number of Replications (Each Program has 2 Replications)
N <- a * b * r   # Total Observations

x <- c(t(as.matrix(DF[,-1])))
f1 <- c("Three-hour review", "One-day program", "10-week course")
f2 <- c("business", "engineering", "arts and science")
tm2 <- gl(a, 1, N, factor(f1))
tm1 <- gl(b, r * a, N, factor(f2))
result <- anova(lm(x ~ tm1 * tm2))   # Similar to aov(x ~ tm)

result

alpha <- 0.05

# Upper Tail Test

pval1 <- result$`Pr(>F)`[1]
pval2 <- result$`Pr(>F)`[2]
pval3 <- result$`Pr(>F)`[3]

if(pval1 <= alpha)
{
  cat("Since pval",pval1,"is less than or equal to 0.05 therefore we can reject Null Hypothesis
      for Undergraduation.")
} else{
  cat("Since pval",pval1,"is greater than 0.05 therefore we cannot reject Null Hypothesis
      for Undergraduation.")
}

if(pval2 <= alpha)
{
  cat("Since pval",pval2,"is less than or equal to 0.05 therefore we can reject Null Hypothesis
      for programs.")
} else{
  cat("Since pval",pval2,"is greater than 0.05 therefore we cannot reject Null Hypothesis
      for programs.")
}

if(pval3 <= alpha)
{
  cat("Since pval",pval3,"is less than or equal to 0.05 therefore we can reject Null Hypothesis
      for interaction.")
} else{
  cat("Since pval",pval3,"is greater than 0.05 therefore we cannot reject Null Hypothesis
      for interaction.")
}