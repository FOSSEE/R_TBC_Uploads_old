###install.packages("igraph")

library(igraph)

graph <- make_full_bipartite_graph(2, 2, dir=TRUE, mode="all")


print(graph, v=TRUE)


plot(graph)















