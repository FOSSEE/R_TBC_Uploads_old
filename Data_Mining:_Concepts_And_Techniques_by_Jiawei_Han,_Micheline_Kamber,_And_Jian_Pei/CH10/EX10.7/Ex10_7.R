
library(dbscan)

data(iris)

iris <- as.matrix(iris[,1:4])

result_dbscan <- dbscan(iris, eps = .3, minPts = 3)


print(result_dbscan)


pairs(iris, col = result_dbscan$cluster + 1L)





