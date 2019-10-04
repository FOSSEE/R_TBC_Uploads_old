                                      # Page no. : 43

# How are you doing? 

# 3rd Question

scores <- c(2, 3, 3, 6, 6)

value <- mean(scores)

cat("Mean value of scores is", value)

# 4th Question (Only a, b, c parts)

scores <- c(5, 3, 2, 13, 2)

# a) Mean

value <- mean(scores)

cat("Mean value of scores is", value)

# b) Mode

mode <- function(v) {
  x <- unique(v)
  x[which.max(tabulate(match(v, x)))]
}

value <- mode(scores)

cat("Mode of scores is", value)

# c) Median

value <- median(scores)

cat("Median of scores is", value)