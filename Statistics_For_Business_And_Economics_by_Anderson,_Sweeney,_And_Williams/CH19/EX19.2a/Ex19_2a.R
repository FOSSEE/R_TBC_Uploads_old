                                    # Page no. : 858 - 861

# Sign Test

store <- c(56, 19, 36, 128, 12, 63, 39, 84, 102, 44)
sales <- c(485, 562, 415, 860, 426, 474, 662, 380, 515, 721)

DF <- data.frame(store, sales)

median <- 450
sign <- c()

for (i in 1:nrow(DF)) {
  if(DF$sales[i] >= median)
  {
    sign[i] = "+"
  }else
  {
    sign[i] <- "-"
  }
}

DF <- cbind(DF,sign)
View(DF)

positive <- table(DF$sign)[[2]]
n <- nrow(DF)

test <- binom.test(positive, n)
test

if(test$p.value >= 0.05)
{
  cat("We cannot reject null hypothesis")
} else
{
  cat("We can reject null hypothesis")
}


N <- 60
n1 <- 22   # "+ sign
n2 <- 38   # "- sign
med <- 236000

mean <- 0.50 * N
sd <- sqrt(0.25 * N)

CF <- 22.5   # Correction Factor

p <- pnorm(CF, mean = mean, sd = sd)

if(p >= 0.05)
{
  cat("We cannot reject null hypothesis")
} else
{
  cat("We can reject null hypothesis")
}
