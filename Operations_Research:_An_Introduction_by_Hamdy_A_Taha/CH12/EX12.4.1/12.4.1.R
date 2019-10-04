##Chapter 12 : Deterministic Inventory Modelling
##Example 4-1 : Page 508

#Setting up initial cost matrix and other values
cost<-matrix(Inf,8,5)
for(i in 1:4){
  for (j in i:4){
    cost[2*i-1,j]=6 + (j-i)*0.1
    cost[2*i,j]=9 + (j-i)*0.1
  }
}
cost[,5]=0
totalcost=0
Regular=c(90,100,120,110)
Overtime=c(50,60,80,70)
Demand=c(100,190,210,160,20)
Supply= c(rbind(Regular,Overtime))

#Setting up the resultant table
rown=numeric()
for(i in 1:4){rown=c(rown,paste("R",i,sep = ""),paste("O",i,sep = ""))}
allocation=matrix(0,8,5,dimnames = list(rown,c(1:4,"Surplus")))


for(i in 1:5){

  while(Demand[i]>0){
    minindex=which.min(cost[,i])
    #if it can still meet the demand
    if(Supply[minindex]>0){
      #allocate min of demand or supply
      allocation[minindex,i]=min(Demand[i],Supply[minindex])
      #calculate cost
      totalcost=totalcost+allocation[minindex,i]*cost[minindex,i]
      ##Subtract the allocated form supply and demand
      tmp=Demand[i]
      Demand[i]=Demand[i]-min(Demand[i],Supply[minindex])
      Supply[minindex]=Supply[minindex]-min(tmp,Supply[minindex])
      cost[minindex,i]=Inf
    #else set all cost of that week to Inf so that it doesnt get chosen again
    }else{
      cost[minindex,]=Inf
    }
    
    
  }
}
allocation
totalcost