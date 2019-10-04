                                    # Page no. : 543 -544

# An example

gender <- c("Male", "Female")
o <- c(996, 390)   # Observed frequency
e <- c(693, 693)   # Expected frequency

diff <- o - e   # Difference
diff_sq <- diff ** 2   # Difference squared

ans <- round(diff_sq / e, 2)   # Difference squared weighted by expected frequency

DF <- data.frame(gender, o, e, diff, diff_sq, ans)
View(DF)