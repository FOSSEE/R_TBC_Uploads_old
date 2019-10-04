##Chapter 7 : Advanced Linear Programming
##Example 1-2 : Page 300 

#Creating the A and b matrix
A=matrix(c(1,3,-1,2,-2,-2),nrow=2,byrow=T)
b=matrix(c(4,2),nrow=2)


s<-character()
basic<-character()
Type<-character()

for(i in 3:1){
  for(j in i:3){
  	##if i!=j and ith and jth column are not linearly dependent
    if(i!=j & !all(abs(A[,i]/A[,j])==c(1,1))){
      ##Solve for X with the ith and jth column
      a<-solve(A[,c(i,j)])%*%b
      s<-rbind(s,toString(a))
      basic<-rbind(basic,c(paste(i,"&",j)))
      #if all values in a>=0,then feasible ,infeasible otherwise
      Type<-rbind(Type,ifelse(all(a >= 0),"Feasible","Infeasible"))
    }
  }
}

cbind(basic,s,Type)
