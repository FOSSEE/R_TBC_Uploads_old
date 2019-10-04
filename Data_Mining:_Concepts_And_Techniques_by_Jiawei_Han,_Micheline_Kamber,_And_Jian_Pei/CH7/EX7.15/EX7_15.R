library(arules)

data("Adult")

sample <- sample(Adult, 100)


sample1 <- apriori(Adult[1:50], parameter = list(support = 0.6))
sample2 <- apriori(Adult[51:100], parameter = list(support = 0.6))


combine_samples <- c(sample1, sample2)


print(duplicated(combine_samples))













