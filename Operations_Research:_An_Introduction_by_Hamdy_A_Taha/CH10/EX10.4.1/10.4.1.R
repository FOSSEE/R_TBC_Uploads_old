##Chapter 10 : Travelling Salesman Problem
##Example 3-1 : Page 443

#Distance matrix
dij<-matrix(c(Inf,120,220,150,210,120,Inf,100,110,130,220,80,Inf,160,185,150,Inf,160,Inf,190,210,130,185,Inf,Inf),nrow=5,byrow = T)
#Source node
source=3
#All edges leading to 3 has infinite length
dij[,3]=Inf
tour<-source
##Nearest neighbour heuristic
for(i in 1:4){
	#choose nearest neighbour to the node
  mini<-which.min(dij[source,])
  #add it to the tour
  tour<-c(tour,mini)
  #make it as the source for next iteration
  source=mini
  #set all edges leading to current node as Inf
  dij[,mini]=Inf
}