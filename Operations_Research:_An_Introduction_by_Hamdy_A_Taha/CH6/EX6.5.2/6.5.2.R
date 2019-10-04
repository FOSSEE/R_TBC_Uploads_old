##Chapter 6 : Network Model
##Example 5-2 : Page 280 

#create distance matrix with -1 meaning no edge and 0 meaning no cost edge
D<-matrix(c(-1,5,6,-1,-1,-1,-1,-1,3,8,-1,-1,-1,-1,-1,-1,2,11,-1,-1,-1,-1,0,1,-1,-1,-1,-1,-1,12,-1,-1,-1,-1,-1,-1),nrow=6,ncol = 6,byrow = T)

##Forward pass
ECT<-numeric()
ECT[1]<-0
for(i in 2:6){
  index<-which((D[,i]>=0) %in% TRUE)
  ECT[i]<-max(ECT[index]+D[index,i])
}

##Backward pass
BP<-numeric()
BP[6]<-ECT[6]
for(i in 5:1){
  index<-which((D[i,]>=0) %in% TRUE)
  BP[i]<-min(BP[index]-D[i,index])
}

##Finding critical nodes
critical<-character()
criti<-numeric()
critj<-numeric()
for(i in 1:6){
  for(j in 1:6){
    if(BP[i]==ECT[i] & BP[j]==ECT[j] & BP[j]-ECT[i]==D[i,j]){
      critical<-cbind(critical,paste(i,"-",j))
      criti=cbind(criti,i)
      critj=cbind(critj,j)
    }
  }
}
critical

##Duration of the project
TotalDays<-0
for (i in 1:length(criti)){
  TotalDays<-TotalDays+D[criti[i],critj[i]]
}
TotalDays