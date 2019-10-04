                                      # Page no. : 510 - 512

# Analysis of Variance and the Completely Randomized Design

method_A <- c(58,64,55,66,67)
method_B <- c(58,69,71,64,68)
method_C <- c(48,57,59,47,49)

DF <- data.frame(method_A,method_B,method_C)

mean1 <- sum(DF$method_A) / nrow(DF)   # Sample Mean 1
mean2 <- sum(DF$method_B) / nrow(DF)   # Sample Mean 2
mean3 <- sum(DF$method_C) / nrow(DF)   # Sample Mean 3

variance1 <- sum((DF$method_A - mean1)**2) / (nrow(DF)-1)   # Sample Variance 1
variance2 <- sum((DF$method_B - mean2)**2) / (nrow(DF)-1)   # Sample Variance 2
variance3 <- sum((DF$method_C - mean3)**2) / (nrow(DF)-1)   # Sample Variance 3

sd1 <- sqrt(variance1)   # Sample Standard Variance 1
sd2 <- sqrt(variance2)   # Sample Standard Variance 2
sd3 <- sqrt(variance3)   # Sample Standard Variance 3

sample_mean <- (mean1 + mean2 + mean3) / 3   # Overall Sample Mean

variance <- ((mean1 - sample_mean)**2 + (mean2 - sample_mean)**2 + (mean3 - sample_mean)**2)  /  (3 - 1)
# Sample Varince for Overall Sample Mean (3 --> Methods)

sigma_sq <- nrow(DF) * variance   # Between-treatment Estimate of Sigma Square

estimate_sigma_sq <- (variance1 + variance2 + variance3) / 3   # Within-treatment Estimate of Sigma Square

ratio <- sigma_sq / estimate_sigma_sq

cat("Ratio of Between-treatment Estimate of Sigma Square by Within-treatment Estimate
    of Sigma Square is",ratio)

