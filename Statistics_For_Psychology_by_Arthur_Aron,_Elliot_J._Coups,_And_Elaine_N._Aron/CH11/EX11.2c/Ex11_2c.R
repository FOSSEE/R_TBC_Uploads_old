                                    # Page no. : 457 - 458

# How are you doing?

# 4th Question

person <- c("K", "L", "M")
z_score1 <- c(0.5, -1.4, 0.9)
z_score2 <- c(-0.7, -0.8, 1.5)

c_p <- round(z_score1 * z_score2, 2)   # Cross product

r <- round(sum(c_p) / 3, 2)   # Correlation coefficien

cat("Correlation coefficient is", r)