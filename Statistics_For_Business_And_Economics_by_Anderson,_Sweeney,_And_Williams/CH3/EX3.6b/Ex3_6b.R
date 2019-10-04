                                          # Page no. : 126 - 127

# Data

audit <- c("10-14", "15-19","20-24","25-29","30-34")
midpoint <- c(12,17,22,27,32)
frequency <- c(4,8,5,2,1)

dataset <- data.frame(audit, midpoint, frequency)

# Mean for Grouped Data

mean <- weighted.mean(dataset$midpoint,dataset$frequency)

cat("Mean for grouped data is",mean)

# Sample Variance for Grouped Data

var <- sum(dataset$frequency*((dataset$midpoint - mean)**2)) / (sum(dataset$frequency) - 1)

# Note that : Grouped sample variance has no inbuild function

cat("Sample variance for grouped data is",var)