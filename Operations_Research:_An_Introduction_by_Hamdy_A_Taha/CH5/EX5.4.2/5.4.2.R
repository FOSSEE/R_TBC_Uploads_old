##Chapter 5 : Transportation Model and its Variant
##Example 4-2 : Page 222 
costs <- matrix (c(1,4,6,3,9,7,10,9,4,5,11,7,8,7,8,5), 4, 4,byrow = T)
rowmin<-numeric()
colmin<-numeric()
costsdup<-costs

##Subtracting minimum cost element of row from all the elements of rows
for(i in 1:nrow(costsdup)){
  costsdup[i,]<-costsdup[i,]-min(costsdup[i,])
}

##Subtracting minimum cost element of column from all the elements of column
for(i in 1:ncol(costsdup)){
  costsdup[,i]<-costsdup[,i]-min(costsdup[,i])
}


##We formulate it as a transportation tableau such that only one zero is selected from every row  and every column
##maketable function returns the constraint matrix
eqnrow<-numeric()
maketable<-function(costsdup){
  logic1<-costsdup==0
  return(logic1)
}

matr<-maketable(costsdup)

row.signs <-rep("=",nrow(costsdup))
row.rhs <-rep(1,nrow(costsdup))

col.signs <-rep("=",ncol(costsdup))
col.rhs <-rep(1,ncol(costsdup))
library(lpSolve)

Solution<-lp.transport (matr, "max", row.signs, row.rhs, col.signs, col.rhs)
while(Solution$objval!=nrow(costsdup)){
  costsdup<-costsdup-min(costsdup[costsdup>0])
  for (i in 1:length(costsdup)){
    ifelse(costsdup[i]<0, (costsdup[i]=0),0)
  }
  matr<-maketable(costsdup)
  Solution<-lp.transport (matr, "max", row.signs, row.rhs, col.signs, col.rhs)
}
Solution$solution