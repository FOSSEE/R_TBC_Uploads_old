#Example  :  2.4C    Chapter  :  2.4     Pageno  :  74
#3-step paths for the given directed graph
A<-matrix(c(1,1,1,0),ncol=2)
A3<-A%*%A%*%A
print("3 step paths between each pair of nodes in the given directed graph is :")
print(A3)