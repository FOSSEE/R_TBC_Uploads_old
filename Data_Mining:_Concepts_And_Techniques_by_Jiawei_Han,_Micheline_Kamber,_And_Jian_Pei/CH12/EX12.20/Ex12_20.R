library(ldbod)

dataset <- as.matrix(iris[,1:4])

local_den<- ldbod(dataset, k=3, nsub=50)


print(local_den)