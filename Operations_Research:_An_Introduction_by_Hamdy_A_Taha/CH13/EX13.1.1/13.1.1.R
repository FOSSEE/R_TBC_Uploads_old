##Chapter 13 : Decision Analysis and Games
##Example 1-1 : Page 527

#Setting up input values
LocationC=c(12.9,27.2,59.4)
ReputationC=c(54.5,27.3,18.2)
LocationP=0.17
ReputationP=0.83
Criteria=c(LocationP,ReputationP)
#composite weights
Choice=Criteria%*%rbind(LocationC,ReputationC)

colnames(Choice)<-c("UofA","UofB","UofC")


#Setting up the data tree for the particular problem
#If you have trouble installing the package/library, please reinstall R form the following link:https://cran.r-project.org/bin/ 
library(data.tree)
SelectAUniversity <- Node$new("Select a University")
  Location<-SelectAUniversity$AddChild(paste("Location",LocationP))
    for(child in 1:3){
      Location$AddChild(paste("Uof",LETTERS[child],LocationC[child]))
    }
  Reputation<-SelectAUniversity$AddChild(paste("Reputation",ReputationP))
    for(child in 1:3){
      Reputation$AddChild(paste("Uof",LETTERS[child],LocationC[child]))
    }
print(SelectAUniversity)
print(Choice)
