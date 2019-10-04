                                  # Page no. : 883 - 884

# Kruskal - Wallis Test

A <- c(25, 70, 60, 85, 95, 90, 80)
B <- c(60, 20, 30, 15, 40, 35)
C <- c(50, 70, 60, 80, 90, 70, 75)

x <- list(A,B,C)

test <- kruskal.test(x)
test

if(test$p.value >= 0.05)
{
  cat("We cannot reject null hypothesis")
} else
{
  cat("We can reject null hypothesis")
}