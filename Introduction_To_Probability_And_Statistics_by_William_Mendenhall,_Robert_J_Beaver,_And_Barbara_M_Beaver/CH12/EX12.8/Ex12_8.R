#refer to example 12.7 for height and weight values
height <- c(73,71,75,72,72,75,67,69,71,69)
weight <- c(185,175,200,210,190,195,150,170,180,175)
cor.test(height, weight, method = "pearson", alternative = "two.sided")
print(cor.test(height, weight, method = "pearson", alternative = "two.sided")[3])
cat("correlation is declared significant at 1% level")