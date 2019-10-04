# Page.no 5.44

##Creating a function 
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

y<-c(11,11,12,12,12,13,13,13,13,14,14,14,14,15,15,16,17,18)
Md<-mode(y)

## Since 13 and 14 are adjacent numbers their mean can be considered as the mode
Mode<-mean(Md)
cat("The mode will be", Mode)

