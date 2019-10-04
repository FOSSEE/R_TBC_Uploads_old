##Chapter 11 : Deterministic Dynamic Programming
##Example 1-1 : Page 461

#Create a matrix with all Inf
d<-matrix(Inf,7,7)
#Add edge weights/lengths
d[8]=7;d[15]=8;d[22]=5;d[30:32]=c(12,8,7);d[38:39]=c(9,13);d[47:48]=c(9,6)
#Dynamic algorithm for Shortest path algorithm
ShortestDistance<-function(node,stage){
  
  index<-which(d[1:7,node]!=Inf)
  #if it is node 1 at stage 2, return 1
  if(c(1) %in% index & stage==2){
    return(d[1,node])
  #else return the minimum distance of all possible nodes from current node
  }else{
    dist<-numeric()
    for(i in 1:length(index)){
      dist[i]<-(min(d[index[i],node]+ShortestDistance(index[i],stage-1)))
    }
    return(min(dist))
  }
}
ShortestDistance(7,4)