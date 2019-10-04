library(DMwR)
 # Ignore class column "Species", which is a categorical column

iris <- iris[,1:4]

outlierslof <- lofactor(iris, k=2)

outliers <- order(outlierslof, decreasing=T)[1:10]

print(outliers)
