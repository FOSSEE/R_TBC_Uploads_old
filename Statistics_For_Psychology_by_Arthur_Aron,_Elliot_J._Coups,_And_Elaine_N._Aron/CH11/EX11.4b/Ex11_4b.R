                                 # Page no. : 478 - 479

# Worked out examples 2

Elementry_School <- c("Main Street", "Casat", "Lakeland", "Shady Grove", "Jefferson")
Class_size <- c(25, 14, 33, 28, 20)
Achievement <- c(80, 98, 50, 82, 90)

# Direct method

r <- round(cor(Class_size,Achievement), 2)   # Correlation Coefficient
cat("Correlation coefficient is", r)