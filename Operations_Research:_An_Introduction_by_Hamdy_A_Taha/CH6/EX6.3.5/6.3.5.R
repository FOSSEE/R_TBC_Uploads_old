##Chapter 6 : Network Model
##Example 3-5 : Page 252 
#Initializing the nodes and floyd's D matrix and S matrix
n = 5
floydD<-array(Inf,dim= c(5,5))
diag(floydD) <- 0
floydD[1,2]=3;floydD[1,3]=10;floydD[2,4]=5;floydD[3,4]=6;floydD[4,5]=4;

#symmetric matrix
for(i in 1:5){
  j=1
  while(j<i){
    floydD[i,j]=floydD[j,i]
    j=j+1
  }
}
floydseq<-matrix(1:n,nrow=n,ncol=n,byrow = T)
diag(floydseq) <- 0

##Floyd's Algorithm
for(k in 1:n){
  for(i in 1:n){
    for(j in 1:n){
      if(i!=k & j!=k & i!=j){
        if(floydD[i,k]+ floydD[k,j]< floydD[i,j]){
          floydD[i,j] <- floydD[i,k]+ floydD[k,j]
          floydseq[i,j] <- k
        }
      }
    }
  }
}
floydD
floydseq

##Printing the shortest route 
path<-character()
i=1;j=5
while(floydseq[i,j]!=j){
  path<-paste("->",j,path)
  j=floydseq[i,j]
}
path<-paste(i,"->",j,path)
path