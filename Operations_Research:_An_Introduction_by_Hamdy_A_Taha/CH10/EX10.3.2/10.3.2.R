##Chapter 10 : Travelling Salesman Problem
##Example 3-2 : Page 441

#TSP library
library("TSP")
#Distance matrix
dij<-matrix(c(Inf,13,21,26,10,Inf,29,20,30,20,Inf,5,12,30,7,Inf),nrow=4,byrow = T)
#making a asymetric TSP instance
atsp<-ATSP(dij)
#Solve TSP
d=solve_TSP(atsp,method = "nearest_insertion",control = list(start,"1"))
d
d[1:4]
