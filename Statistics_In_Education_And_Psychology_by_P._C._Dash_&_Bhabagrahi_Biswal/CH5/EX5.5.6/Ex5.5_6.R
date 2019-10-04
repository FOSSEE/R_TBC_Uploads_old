#Page.No 5.43

Scores <- c(20,25,20,28,29,28,30,32)

#Creating a function
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

mode(Scores)
# the series is Bi-modal
