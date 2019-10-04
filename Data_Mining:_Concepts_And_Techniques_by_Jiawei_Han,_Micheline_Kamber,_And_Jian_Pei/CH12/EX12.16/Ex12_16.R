library(DMwR)
library(lattice)
library(grid)



dataset<- iris[,1:4]

d <- as.matrix(dataset)

dist<- kNNdist(d, k=4, search="kd")

print(dist)


kNNdistplot(d, k=4)


