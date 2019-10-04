library(kmodR)

d<- as.matrix(iris[,1:4])

print(kmod(d,k=3,l=10, i_max = 100))


