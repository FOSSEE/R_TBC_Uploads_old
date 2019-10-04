##Chapter 6 : Network Model
##Example 2-1 : Page 239 

#If you have trouble installing the package/library, please reinstall R form the following link:https://cran.r-project.org/bin/ 
library(igraph)
#creating the undirected graph with 6 nodes
A=graph(edges=c(1,2,1,5,1,3,1,4,2,5,2,3,2,4,3,4,3,6,4,5,4,6), n=6, directed=F )
#mst function generates the minimum spanning tree
MST<-mst(A,weights = c(1,9,5,7,3,6,4,5,10,8,3))

#The Fruchterman-Reingold Algorithm is a force-directed layout algorithm. The idea of a force directed layout algorithm is to consider 
#a force between any two nodes. In this algorithm, the nodes are represented by steel rings and the edges are springs between them. 
#The attractive force is analogous to the spring force and the repulsive force is analogous to the electrical force. The basic idea is 
#to minimize the energy of the system by moving the nodes and changing the forces between them.
#Here we create the cordinates for our graph using layout.fruchterman.reingold function
lay <- layout.fruchterman.reingold(A)

#Assigning the coordinates to the nodes of A
V(A)$x <- lay[, 1]
V(A)$y <- lay[, 2]

#assigning range of x and y
xlim <- range(lay[,1])
ylim <- range(lay[,2])

#plot graph A
plot.igraph(A, layout = lay,vertex.size=20,
            xlim = xlim, ylim = ylim, rescale = FALSE)
#plot MST with red edges and nodes over the previous graph
plot.igraph(MST, layout = lay,vertex.color="red", edge.color="red",vertex.size=20,
            add = TRUE, rescale = FALSE)
