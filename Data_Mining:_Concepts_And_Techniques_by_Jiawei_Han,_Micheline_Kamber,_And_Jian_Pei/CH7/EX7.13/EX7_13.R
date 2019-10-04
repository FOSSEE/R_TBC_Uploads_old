library(arules)

data("Adult")

sample <- sample(Adult, 10)

## used Jaccard distance

jaccard_dist <- dissimilarity(sample)

hira_clu <- hclust(jaccard_dist , method = "ward.D2")

plot(hira_clu, labels = FALSE, main = "Dendrogram")













