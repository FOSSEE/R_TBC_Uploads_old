##Chapter 13 : Decision Analysis and Games
##Example 4-1 : Page 556

#payoff matrix
payoffmatrix=matrix(c(8,-2,9,-3,6,5,6,8,-2,4,-9,5),nrow = 3,byrow = T)

RowMin=apply(payoffmatrix,1,min)
print("Maximin")
max(RowMin)

ColMax=apply(payoffmatrix,2,max)
print("Maximin")
min(ColMax)
