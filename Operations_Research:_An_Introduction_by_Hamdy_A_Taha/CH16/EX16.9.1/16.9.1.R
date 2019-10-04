##Chapter 16 : Queuing Systems
##Example 9-1 : Page 667

#Queueing library to process different queueing models
library(queueing)
#inputs
Speed=c(30,36,50,66)
OperatingCost=c(15,20,24,27)

#service rate for each model
ServiceRate=numeric()
for(i in 1:4){
  ServiceRate[i]=24/(10000/(Speed[i]*60))
}
ServiceRate
Ls=numeric()

#length of system for each model
for(i in 1:4){
  #creating a MMc instance with the following parameters
  y=NewInput.MM1(lambda=4, mu=ServiceRate[i])
  #Solving the model which returns a list
  z=QueueingModel(y)
  Ls[i]=z$L
}
Ls
#cost for the 4 models
cost=matrix(0,4,3)
colnames(cost)=c("EOC","EWC","ETC")
for(i in 1:4){
  cost[i,1]=24*OperatingCost[i]
  cost[i,2]=80*Ls[i]
  cost[i,3]=cost[i,1]+cost[i,2]
}
cost