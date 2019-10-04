
library(SoftClustering)

data(iris)

Hardclu <- HardKMeans(iris[,1:4],2,2,10)


print(Hardclu)













