                                  # Page no. : 458 - 459

# Significance of a correlation coefficient

N <- 3   # No. of perons
r <- 0.24   # Correlation coefficient 

t <- round(r / sqrt((1 - (r ** 2)) / (N - 2)), 2)   # t value

cat("t value is", t)