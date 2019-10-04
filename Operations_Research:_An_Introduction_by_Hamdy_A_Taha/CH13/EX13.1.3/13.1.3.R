##Chapter 13 : Decision Analysis and Games
##Example 1-3 : Page 533

AL=matrix(c(1,0.5,0.2,2,1,0.5,5,2,1),nrow = 3,byrow = T)
wi=round(rowMeans(sweep(AL,2,colSums(AL),`/`)),3)
nmax=sum(round((AL%*%wi),4))
#Consistency index
CI=(nmax-3)/2
#random consistency of A
RI=1.98/3
#Consistency ratio
CR=CI/RI
CR