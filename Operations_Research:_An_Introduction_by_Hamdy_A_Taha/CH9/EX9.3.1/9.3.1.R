##Chapter 8 : Heuristic Programming
##Example 3-1 : Page 388

G<-rep(0,8)
F=c(90,60,50,80,100,40,20,70)
##function to return the neighbourhood of an index
N<-function(index){
  A<-numeric()
  for(j in 1:2){
    for(i in 1:4){
      if(index+((-1)**j)*i<=8 & index+((-1)**j)*i>0){
        A<-c(A,index+((-1)**j)*i)
      }
    }
  }
  return(A)
}

#for 100 repetitions
for(m in 1:100){
  #take a random uniform index
  index=ceiling(runif(1)*8)
  Tenure=3
  L=c(0)
  #a random index from the neighbourhood not in tabu list
  i=ceiling(runif(1)*sum(sum(!(N(index) %in% L))))

  #while new index is lesser than old
  while(F[index]>F[N(index)[!(N(index) %in% L)]][i]){
    #add current node to tabu list
    L<-c(L,index)
    #pick new node
    index=N(index)[!(N(index) %in% L)][i]
    #remove the node after their tenure
    if(i>2){
      L<-L[-1]
    }
    ##pick the next index
    i=ceiling(runif(1)*sum(sum(!(N(index) %in% L))))
  }
  #counter for bar plot
  G[index]=G[index]+1
}

barplot(G/sum(G),names.arg = 1:8)
