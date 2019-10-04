                                    # Page no. : 456 - 457

# Figuring the correlation coefficient a second example

No_of_exposures <- c(1:8)
No_of_words_recalled <- c(3, 2, 6, 4, 5, 5, 6, 9)

# Direct method

r <- round(cor(No_of_exposures,No_of_words_recalled), 2)   # Correlation Coefficient
cat("Correlation coefficient is", r)