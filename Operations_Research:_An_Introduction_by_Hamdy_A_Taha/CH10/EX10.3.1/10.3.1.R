##Chapter 10 : Travelling Salesman Problem
##Example 3-1 : Page 438

#TSP library
library("TSP")
#Distance matrix
dij<-matrix(c(Inf,10,3,6,9,5,Inf,5,4,2,4,9,Inf,7,8,7,1,3,Inf,4,3,2,6,5,Inf),nrow=5,byrow = T)
#making a asymetric TSP instance
atsp<-ATSP(dij)
#Solve TSP
d=solve_TSP(atsp,method = "nearest_insertion",control = list(start,"1"))
d
d[1:5]
