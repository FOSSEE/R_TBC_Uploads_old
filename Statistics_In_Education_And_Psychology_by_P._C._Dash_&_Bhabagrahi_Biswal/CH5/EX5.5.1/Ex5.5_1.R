#Page.No 5.42

# Create the function.
mode <- function(x) {
  unique_val <- unique(x)
  counts <- vector()
  for (i in 1:length(unique_val)) {
    counts[i] <- length(which(x==unique_val[i]))
  }
  position <- c(which(counts==max(counts)))
  if (mean(counts)==max(counts)) 
    mode_x <- 'Mode does not exist'
  else 
    mode_x <- unique_val[position]
  return(mode_x)
}

# Create the vector with numbers.
v <- c(10,20,10,25,10,20,10,22,28)

# Calculate the mode using the user function.
result <- mode(v)
cat("The mode is",result)
