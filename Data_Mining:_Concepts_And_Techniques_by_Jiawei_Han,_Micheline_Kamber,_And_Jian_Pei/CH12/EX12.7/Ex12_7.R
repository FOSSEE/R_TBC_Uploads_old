iris <- iris[,1:4]


kmeansClu <- kmeans(iris, centers=3)



centersofclu <- kmeansClu$centers[kmeansClu$cluster, ] 

dist <- sqrt(rowSums((iris - centersofclu)^2))

outliers <- order(dist, decreasing=T)[1:10]

print(outliers) 