##Chapter 13 : Decision Analysis and Games
##Example 2-2 : Page 544

#Probability matrix
CondP=matrix(c(0.9,0.1,0.5,0.5),nrow=2,byrow = T)

PriorP=c(0.6,0.4)
JointP=CondP*PriorP
AbsP=colSums(JointP)
BayesP=sweep(JointP,2,AbsP,`/`)

CompanyA=c(5000,-2000)
CompanyB=c(1500,500)

ExpectedStockAat4=BayesP[,1]%*%CompanyA
ExpectedStockBat5=BayesP[,1]%*%CompanyB
ExpectedStockAat6=BayesP[,2]%*%CompanyA
ExpectedStockBat7=BayesP[,2]%*%CompanyB

ExpectedStockAat4
ExpectedStockBat5
ExpectedStockAat6
ExpectedStockBat7