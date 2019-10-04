                                        # Page no. : 534

# Randomized Block Design

blocks <- c("Controller 1", "Controller 2", "Controller 3", "Controller 4", "Controller 5", "Controller 6")
system_A <- c(15, 14, 10, 13, 16, 13)
system_B <- c(15, 14, 11, 12, 13, 13)
system_C <- c(18, 14, 15, 17, 16, 13)

DF <- data.frame(blocks, system_A, system_B, system_C)

k <- ncol(DF) - 1   # Number of Treatments (blocks is not the treatement)
b <- nrow(DF)   # Number of blocks
N <- k * b   # Total sample Size

x <- c(t(as.matrix(DF[,-1])))
f <- c("system_A", "system_B", "system_C")
tm <- gl(k, 1, N, factor(f))
blk <- gl(b, k, N) 
result <- anova(lm(x ~ tm + blk))   # Similar to aov(x ~ tm)

result

f_value <- result$`F value`[1]

# Upper Tail Test

# P-value Approach

pval <- result$`Pr(>F)`[1]

if(pval <= 0.05)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
}

