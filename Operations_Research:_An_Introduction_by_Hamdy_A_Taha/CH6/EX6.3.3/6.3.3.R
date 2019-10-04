##Chapter 6 : Network Model
##Example 3-3 : Page 245 
library(igraph)

#creating the directed graph with 15 nodes
A=make_directed_graph(edges=c(1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,1,10,10,11,11,12,12,13,13,14,14,15,15,9,11,2,13,2,15,2,3,10,5,10,7,10), n=15)
#weights vector
weightsg<-rep(1,21)
#shortest path
sP<-get.shortest.paths(A, 1, to=9,weights =weightsg)$vpath
#shortest path cost
sPCost<-shortest.paths(A, 1, to=9,weights =weightsg,mode = "out")
sP
sPCost
#circle layout of graph
l<-layout.circle (A)
#plot graph A
plot(A,vertex.size=15,layout=l,edge.arrow.size = 0.2, asp = 0.5)

#make an empty graph and add edges of the shortest path to the graph with red color nodes
A[] <- 0
for (ed in 1:(length(sP[[1]])-1)){
  A<-A+edge(c(sP[[1]][ed],sP[[1]][ed+1]),color="red")
  V(A)[sP[[1]][ed]]$color<-"red"
}
V(A)[9]$color<-"red"
#plot the shortest path over the previous graph
plot(A,vertex.size=15,layout=l, edge.arrow.size = 0.2,edge.color="orange", asp = 0.5,add=T)
