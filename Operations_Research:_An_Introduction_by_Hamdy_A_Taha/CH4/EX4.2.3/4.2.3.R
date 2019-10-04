##Chapter 4 : Duality and Post-optimality Analysis
##Example 2-3 : Page 166

#Optimal Inverse
OptimalInv=matrix(c(2/5,-1/5,1/5,2/5),nrow=2,byrow=T)

#Original X1 column
OrigX1=c(1,2)

##Optimal X1 column using formaula 1
X1Optimal=OptimalInv%*%OrigX1
X1Optimal

##Functions to calculate Z coefficients of X1 and R
ZCoefX1<-function(y1,y2) {return(y1+2*y2-5)}
ZCoefR<-function(y1,y2) {return(paste(y2,"+ M"))}

## Calling the function with optimal dual values
ZCoefX1(29/5,-2/5)
ZCoefR(29/5,-2/5)
