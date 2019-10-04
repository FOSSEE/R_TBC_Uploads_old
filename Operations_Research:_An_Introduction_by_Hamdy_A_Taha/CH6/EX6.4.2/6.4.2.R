##Chapter 6 : Network Model
##Example 4-2 : Page 263 

#If you have trouble installing the package/library, please reinstall R form the following link:https://cran.r-project.org/bin/ 
library(optrees)
#edge matrix  with weights
arcs<-matrix(c(1,2,20,
	1,3,30,
	1,4,10,
	1,3,30,
	1,4,10,
	2,3,40,
	2,5,30,
	2,5,30,
	3,5,20,
	4,5,20),
byrow=T,ncol=3)
#Finds the min cut for maximal flow	
findMinCut(1:5, arcs, algorithm = "Ford-Fulkerson", source.node = 1,sink.node = 5, directed = T)$max.flow