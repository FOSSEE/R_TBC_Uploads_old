                                    # Page no. : 529 - 530

# Worked out examples 6

Elementry_School <- c("Main Street", "Casat", "Lakeland", "Shady Grove", "Jefferson")
Class_size <- c(25, 14, 33, 28, 20)
Achievement <- c(80, 98, 50, 82, 90)

DF <- data.frame(Elementry_School, Class_size, Achievement)
View(DF)

# Direct method

regressor <- lm(Achievement ~ Class_size, data = DF)
res <- summary(regressor)

res

p_r <- round(res$r.squared, 2) # Proportionate reduction in error

cat("Proportionate reduction in error is", p_r)