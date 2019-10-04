##Chapter 6 : Network Model
##Example 3-1 : Page 243

#If you have trouble installing the package/library, please reinstall R form the following link:https://cran.r-project.org/bin/ 
library(igraph)

#creating the directed graph with 5 nodes
A=graph(edges=c(1,2,1,3,1,4,2,3,2,4,2,5,3,4,3,5,4,5), n=5, directed=T )
#creating weights vector for each edges of the graph
weightsg<-c(4000,5400,9800,4300,6200,8700,4800,7100,4900)
#get shortest path from 1 to 5
sP<-get.shortest.paths(A, 1, to=5,weights =weightsg)$vpath
#get shortest path cost from 1 to 5
sPCost<-shortest.paths(A, 1, to=5,weights =weightsg)
sP
sPCost

#creating coordinates for layout
l<-cbind(seq(0,9,2),0)

#plot the graph with straight edges(edge 1,4,7 & 9 are straight edges.The order of edges is taken from  graph initialization in line 6)
plot(delete.edges(A,c(2,3,5,6,8)),layout=l*2,vertex.size=15,edge.arrow.width = 0.2, asp = 0.5,edge.label=weightsg[c(1,4,7,9)])
#plot the graph with straight edges over the previous graph
plot(delete.edges(A,c(1,4,7,9)),edge.curved=.8,layout=l*2,vertex.size=15,edge.arrow.width = 0.2,asp = 0.5,edge.label=weightsg[c(2,3,5,6,8)],add=T)
A[] <- 0
#assign color red to each node of the graph in the shortest path
for (ed in 1:(length(sP[[1]])-1)){
  A<-A+edge(c(sP[[1]][ed],sP[[1]][ed+1]),color="red")
  V(A)[sP[[1]][ed]]$color<-"red"
}
V(A)[5]$color<-"red"

#plot the shortest path over the previous graph
plot(A,layout=l*2,vertex.size=15,edge.arrow.width = 0.2,edge.curved=.8,edge.color="orange", asp = 0.5,add=T)
