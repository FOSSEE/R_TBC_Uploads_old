#Page.No 7.27 - 7.28
 
scores<-c(8,9,10,11,12,13,14,15)

n <- length(scores)  # number of values

std <- sd(scores)    # sample standard deviation

S.D<-sqrt((std ^ 2) * ((n - 1) / n)) # Population std deveiation

cat("The standard deviation of the scores is",S.D)

"The Answer given in the book is wrong"
