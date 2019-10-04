#Page.No 5.43

# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
scores <- c(20,25,20,15,19,22,20,22)

# Calculate the mode using the user function.
result <- getmode(scores)
cat("The mode is",result)
