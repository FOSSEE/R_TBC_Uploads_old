##Chapter 8 : Heuristic Programming
##Example 3-1 : Page 388

#function to return the cost of a sequence
Fx<-function(index1){
  cost<-0
  date<-0
  ctable=matrix(c(10,15,3,10,8,20,2,22,6,10,5,10,7,30,4,8),nrow = 4,byrow=T)
  
  for(i in 1:4){
    date<-date+ctable[index1[i],1]
    
    if(date > ctable[index1[i],2]){
      cost<-cost+(date-ctable[index1[i],2])*ctable[index1[i],4]
    }else{
      cost<-cost+(ctable[index1[i],2]-date)*ctable[index1[i],3]
    }
  }
  return(cost)
}

#function to get the neighbourhoods of a sequence
N<-function(index1){
  swap <- function(x,i) {x[c(i,i+1)] <- x[c(i+1,i)]; x} 
  A<-array(numeric(),c(0,4))
  for(i in 1:3){
    A<-rbind(A,swap(index1,i))
  }
  return(A)
}

#Initializations
index1=sample(c(1,2,3,4))
i=1;Ti<-Fx(index1)

#for 60 repetitions
while(i<=50){
  Ti=0.5*Ti
  p=0
  ##Step 2 of the algorithm
  if(p<3){
    Neighbours<-N(index1)
    RandomN<-Neighbours[ceiling(runif(1,0,3)),]
    if(Fx(index1)<Fx(RandomN)){
      if(runif(1)<exp(-abs(Fx(index1)-Fx(RandomN))/Ti)){
        index1<-RandomN
        p=p+1
        i=i+1
      }else{
        i=i+1
      }
    }else{
      index1<-RandomN
      p=p+1
      i=i+1
    }
  }else{
    i=i+1
  }
}
Fx(index1)