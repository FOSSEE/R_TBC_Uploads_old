##Chapter 6 : Network Model
##Example 3-4 : Page 248 

# Initializing no of nodes and the distance matrix
n = 5
d<-matrix(Inf,nrow=n,ncol = n)
d[1,2]=100;d[1,3]=30;d[2,3]=20;d[3,4]=10;d[3,5]=50;d[4,2]=15;d[4,5]=50

#initalizing the djiktra's algorithm table as shown in the book
djiktable<-matrix(c(1:n,rep(0,3*n)),nrow=n)

now=1
djiktable[1,4]=1

#if any of the node doesn't have any outgoing edge,make it permanent. Ex: node 5
for (i in 1:5){
  if (length(which((d[i,]!=Inf) %in% TRUE))==0){
    djiktable[i,4]=1
  }
}
#while there are nodes with temporary status
while(sum(djiktable[,4])!=n){
  #find all the possibile nodes form current node
  possibles<-which((d[now,]!=Inf) %in% TRUE)
  #for each node in possible nodes
  for (i in possibles){
    #assign current node to temp
    temp<-djiktable[i,2]
    #if current node is not assigned
    if(djiktable[i,2]!=0){
      #the minimum of distance is added
      djiktable[i,2]=min(djiktable[i,2],djiktable[now,2]+ d[now,i])
    }else{
      djiktable[i,2]=djiktable[now,2]+ d[now,i]
    }
    #if there is no change in the next node
    if(djiktable[i,2]!=temp){
      #backtrack
      djiktable[i,3]=now
    }
  }

  #assign permanent status to the minimum index
  min.indx<-which.min(djiktable[possibles,2])
  djiktable[possibles[min.indx],4]=1
  now<- possibles[min.indx]
}

#prints out the shortest route
djiktable[now,2]
path<-character()
while (now!=0){
  path<-paste("->",now,path)
  now=djiktable[now,3]
}
path

