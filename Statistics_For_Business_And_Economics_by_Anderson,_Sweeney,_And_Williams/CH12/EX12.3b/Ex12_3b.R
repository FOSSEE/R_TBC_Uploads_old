                                      # Page no. : 491 - 494

# Goodness of Fit Test Normal Distribution

data <- c(71,66,61,65,54,93,60,86,70,70,73,73,55,63,56,62,76,54,82,79,76,68,53,58,85,80,56,
          61,61,64,65,62,90,69,76,79,77,54,64,74,65,65,61,56,63,80,56,71,79,84)

xbar <- mean(data)
s <- sd(data)

cat("Value of mean is",xbar)
cat("Value of standard variance is",s)

percentage <- c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9)
z <- c()
test_score <- c()

for (i in 1:length(percentage)) {
 z[i] <- round(qnorm(percentage[i]),2)
 test_score[i] <- round(xbar + (z[i] * round(s,2)), 2) 
}

DF <- data.frame(percentage, z, test_score)

interval <- c("Less than 55.10", "55.10 to 59.68", "59.68 to 63.01", "63.01 to 65.82", 
              "65.82 to 68.42", "68.42 to 71.02", "71.02 to 73.83", "73.83 to 77.16",
              "77.16 to 81.74", "81.74 and over")
observed_freq <- c(5,5,9,6,2,5,2,5,5,6)
expected_freq <- c(5,5,5,5,5,5,5,5,5,5)

diff <- observed_freq - expected_freq
sq_diff <- (diff)**2

answer <- (sq_diff) / expected_freq

dataset <- data.frame(interval, observed_freq, expected_freq, diff, sq_diff, answer)

chisq <- sum(dataset$answer)

alpha <- 0.10   # Significance Level

df <- nrow(dataset) - 3   # Degrees of Freedom (k - p - 1 where k = 10, p = 2)

# Upper Tail Test

# P-value Approach

pval <- pchisq(chisq,df,lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
} 
