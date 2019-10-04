population<-c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
#  There are 45 possible samples of 2 items selected from the 10 items. 
combn(population, 2)
samps<-combn(population, 2)
xbars <- colMeans(samps)
table(xbars)
prop.table(table(xbars))
 

