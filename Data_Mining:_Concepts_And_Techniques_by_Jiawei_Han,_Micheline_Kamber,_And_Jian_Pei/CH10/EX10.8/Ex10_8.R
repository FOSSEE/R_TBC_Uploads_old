
library(dbscan)

data(iris)



result <- optics(iris[,1:4], eps = 10, minPts = 5)


###Componets of reachability
Com_reach <- as.reachability(result)


###plot(Com_reach, order_labels = TRUE)


dend <- as.dendrogram(Com_reach)

plot(dend)



