###Install package install.packages("EMCluster")


library(EMCluster)
library(MASS)
library(Matrix)



Dataset<- data.frame(Fi=c(4,3,9,14,18,21),se=c(10,3,6,8,11,7))


d <- as.matrix(Dataset)

emobj <- simple.init(d, nclass = 2)
emobj <- shortemcluster(d, emobj)

emclu <- emcluster(d, emobj, assign.class = TRUE)
print(emclu)












