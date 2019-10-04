                                    # Page no. : 455 - 456

# Figuring the correlation coefficient an example

Hours_slept <- c(5, 7, 8, 6, 6, 10)
Happy_mood <- c(2, 4, 7, 2, 3, 6)

# Book Method

m1 <- mean(Hours_slept)   # Mean
m2 <- mean(Happy_mood)   # Mean

deviation1 <- Hours_slept - m1
sq_dev1 <- deviation1 ** 2   # Squared deviation
sd1 <- round(sqrt(sum(sq_dev1) / 6), 2)   # Standard deviation

z_score1 <- round(deviation1 / sd1, 2)

deviation2 <- Happy_mood - m2
sq_dev2 <- deviation2 ** 2   # Squared deviation
sd2 <- round(sqrt(sum(sq_dev2) / 6), 2)   # Standard deviation

z_score2 <- round(deviation2 / sd2, 2)

c_p <- round(z_score1 * z_score2, 2)   # Cross Product

DF <- data.frame(Hours_slept, deviation1, sq_dev1, z_score1, Happy_mood, deviation2, sq_dev2,
                 z_score2, c_p)
View(DF)

r <- round(sum(DF$c_p) / nrow(DF), 2)   # Correlation Coefficient

cat("Correlation coefficient is", r)

# Direct method

r2 <- round(cor(Happy_mood,Hours_slept), 2)
cat("Correlation coefficient is", r2)
