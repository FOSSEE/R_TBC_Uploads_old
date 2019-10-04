##Chapter 13 : Decision Analysis and Games
##Example 1-2 : Page 530

A=matrix(c(1,0.2,5,1),nrow = 2,byrow = T)
rowMeans(sweep(A,2,colSums(A),`/`))
AL=matrix(c(1,0.5,0.2,2,1,0.5,5,2,1),nrow = 3,byrow = T)
rowMeans(sweep(AL,2,colSums(AL),`/`))
AR=matrix(c(1,2,3,0.5,1,1.5,1/3,2/3,1),nrow = 3,byrow = T)
rowMeans(sweep(AR,2,colSums(AR),`/`))