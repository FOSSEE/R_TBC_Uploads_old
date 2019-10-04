##Chapter 6 : Network Model
##Example 3-2 : Page 244

#If you have trouble installing the package/library, please reinstall R form the following link:https://cran.r-project.org/bin/ 
library(igraph)
#creating the directed graph with 7 nodes
A=make_directed_graph(edges=c(1,2,1,3,2,4,2,3,3,4,3,5,4,5,4,6,5,7,6,7), n=7)
#creating probability vector 
prob<-c(.2,.9,.8,.6,.1,.3,.4,.35,.25,.5)
#creating weight vector from probability vector
weightsg<--round(log10(prob),digits = 5)
##calculating shortest path and its cost
sP<-get.shortest.paths(A, 1, to=7,weights =weightsg)$vpath
sPCost<-shortest.paths(A, 1, to=7,weights =weightsg,mode = "out")
sP
10^(-sPCost)
#plotting the graph A
l<-layout.auto(A)
plot(A,vertex.size=15,layout=l,edge.arrow.width = 0.2, asp = 0.5,edge.label=weightsg)

#plotting the shortest path over graph A
A[] <- 0
for (ed in 1:(length(sP[[1]])-1)){
  A<-A+edge(c(sP[[1]][ed],sP[[1]][ed+1]),color="red")
  V(A)[sP[[1]][ed]]$color<-"red"
}
V(A)[7]$color<-"red"
plot(A,vertex.size=15,layout=l, edge.arrow.width = 0.2,edge.color="orange", asp = 0.5,add=T)
