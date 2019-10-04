
hc <- hclust(dist(iris[,1:4]))


cutree(hc, k = 1:3) #k = 1 is trivial
cutree(hc, h = 100)

## Compare the 2 and 10 grouping:
gra210 <- cutree(hc, k = c(2,10))


plot(gra210)














