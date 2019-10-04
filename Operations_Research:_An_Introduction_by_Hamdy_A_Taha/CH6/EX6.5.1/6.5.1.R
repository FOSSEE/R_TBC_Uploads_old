##Chapter 6 : Network Model
##Example 4-3 : Page 275
library(igraph)
#create a directed graph
A=make_directed_graph(edges=c(1,2,3,4,4,6,6,7,7,8,8,9,1,3,1,5,5,7,1,8), n=9)

#creating layout for plot
l<-cbind(c(1,1.5,3,5,4.5,7,9,11,13),c(1,3,3,3,2,3,2,1,1))

#creating plot
plot(A,vertex.size=15,layout=l,edge.arrow.size = 0.5, asp = 0.2,edge.label=c("A -3","E - 2","F - 2","G - 2","I - 2","J - 4","B - 2","D - 3","H - 1","C - 4") 	)
plot(graph(c(2,3),n=9),layout=l,edge.arrow.size = 0.5,asp = 0.2,edge.lty=2,add=T)
