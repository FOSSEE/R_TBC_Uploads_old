##install.packages("speccalt")


library(speccalt)
iris <- local.rbfdot(iris[,1:4])
cluster1 <- speccalt(iris) # with automatic estimation
cluster2 <- speccalt(iris, 4)


View(cluster1)

View(cluster2)












