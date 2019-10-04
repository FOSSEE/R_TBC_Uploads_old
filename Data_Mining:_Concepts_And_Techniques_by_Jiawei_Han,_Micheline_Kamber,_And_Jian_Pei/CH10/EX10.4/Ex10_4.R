index <- sample(1:dim(iris)[1], 60)
newiris <- iris[index,]
newiris$Species <- NULL

###Apply Hierarchical Clustering

hier_clu <- hclust(dist(newiris), method="ave")
plot(hier_clu , hang = -1, labels=newiris$Species[index])








