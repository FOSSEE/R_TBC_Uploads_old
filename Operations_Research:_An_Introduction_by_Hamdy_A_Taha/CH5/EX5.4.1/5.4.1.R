##Chapter 5 : Transportation Model and its Variant
##Example 4-1 : Page 221 
costs <- matrix (c(15,10,9,9,15,10,10,12,8), 3, 3,byrow = T)
rowmin<-numeric()
colmin<-numeric()

##Subtracting minimum cost element of row from all the elements of rows
for(i in 1:nrow(costs)){
  costs[i,]<-costs[i,]-min(costs[i,])
}

##Subtracting minimum cost element of column from all the elements of column
for(i in 1:ncol(costs)){
  costs[,i]<-costs[,i]-min(costs[,i])
}

##logic1 is a boolean matrix which contains true if cost matrix after the above operations is 0 and 0 otherwise
logic1<-costs==0
eqnrow<-numeric()

##We formulate it as a transportation tableau such that only one zero is selected from every row  and every column
row.signs <-rep("=",nrow(costs))
row.rhs <-rep(1,nrow(costs))

col.signs <-rep("=",ncol(costs))
col.rhs <-rep(1,ncol(costs))

library(lpSolve)
Solution<-lp.transport (logic1, "max", row.signs, row.rhs, col.signs, col.rhs)
if (Solution$objval==nrow(costs)){
  Solution$solution
}
