
data <- iris
data$Species <- NULL

clusters <- kmeans(data, 3)

plot(data[c("Sepal.Length", "Sepal.Width","Petal.Length", "Petal.Width")], col=clusters$cluster)




