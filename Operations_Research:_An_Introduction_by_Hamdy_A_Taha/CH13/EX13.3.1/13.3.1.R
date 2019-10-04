##Chapter 13 : Decision Analysis and Games
##Example 3-1 : Page 553

#Cost matrix
costmatrix<-matrix(c(5,10,18,25,8,7,12,23,21,18,12,21,30,22,19,15),nrow = 4,byrow = T)

#Laplace criterion
print("Laplace")
P=1/4
E=rowSums(costmatrix)*P
min(E)*1000

#Minimax criterion
print("Minimax")
E=apply(costmatrix,1,max)
min(E)*1000

#Savage criterion
print("Savage")
r=sweep(costmatrix,2,apply(costmatrix,2,min))
E=apply(r,1,max)
min(E)