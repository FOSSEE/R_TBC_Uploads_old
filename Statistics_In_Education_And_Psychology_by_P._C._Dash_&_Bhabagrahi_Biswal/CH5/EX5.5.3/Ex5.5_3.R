#Page.No 5.43

# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
Scores <- c(20,20,30,20,25,20,38,37,38)

# Calculate the mode using the user function.
result <- getmode(Scores)
cat("The mode is",result)
