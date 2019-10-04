                                      # Page no. : 526

# Worked out examples 1 

# This example includes solution of worked out examples 3

Elementry_School <- c("Main Street", "Casat", "Lakeland", "Shady Grove", "Jefferson")
Class_size <- c(25, 14, 33, 28, 20)
Achievement <- c(80, 98, 50, 82, 90)

DF <- data.frame(Elementry_School, Class_size, Achievement)
View(DF)

# Direct method

regressor <- lm(Achievement ~ Class_size, data = DF)
res <- summary(regressor)

res

b <- round(res$coefficients[[2]], 2)

a <- round(res$coefficients[[1]], 2)

cat("Linear Prediction Rule is y_cap =",a,"+",b,"x")

# (a) part

x <- 23   # Class size

y_cap <- a + (b * x)   # Predicted achievement

cat("Predicted achievement is", y_cap)

# (b) part

x <- 14   # Class size

y_cap <- a + (b * x)   # Predicted achievement

cat("Predicted achievement is", y_cap)