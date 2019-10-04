library(DMwR)
library(lattice)
library(grid)



d11<- iris[,1:4]

d <- as.matrix(d11)

density_scan<- dbscan(d, eps=1, minPts = 5)


print(density_scan)



