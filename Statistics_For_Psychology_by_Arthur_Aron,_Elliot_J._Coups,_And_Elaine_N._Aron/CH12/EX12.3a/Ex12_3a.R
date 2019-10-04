                                 # Page no. : 502 - 504

# Finding the best linear prediction rule

# Rule 1 ==>  y_cap <- 8 - (.18)*X
# Rule 2 ==>  y_cap <- 4 + (0)*X
# Rule 3 ==>  y_cap <- -2.5 + (1)*X
# Rule 4 ==>  y_cap <- -3 + (1)*X

Hours_slept <- c(5, 6, 6, 7, 8, 10)
Actual_mood <- c(2, 2, 3, 4, 7, 6)

# Rule 1

y_cap1 <- 8 - (.18) * Hours_slept   # Predicted mood 

# Rule 2

y_cap2 <- 4 + (0) * Hours_slept   # Predicted mood 

# Rule 3

y_cap3 <- -2.5 + (1) * Hours_slept   # Predicted mood 

# Rule 4

y_cap4 <- -3 + (1) * Hours_slept   # Predicted mood 

DF <- data.frame(Hours_slept, Actual_mood, y_cap1, y_cap2, y_cap3, y_cap4)
View(DF)