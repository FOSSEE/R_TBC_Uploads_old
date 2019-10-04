##Example 2.5.4 Pg.49
##Kurtosis

##install.packages("moments",dependencies = T)
library(moments)

meso = c(1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,7,7,7,8,8,9)
lepto = c(1,2,2,3,3,3,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6,7,7,7,8,8,9)
platy = c(1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9)
par(mfrow=c(1,3))
hist(meso,main="Mesokurtic",breaks = 9)
hist(lepto,main="Leptokurtic",breaks=9)
hist(platy,main="Platykurtic",breaks=9)
dev.off()

descriptive <- function(x)
{
  cat("Mean = " ,mean(x), "\n")
  cat("Median = " ,median(x),"\n")
  cat("Mode = " ,names(which(table(x)==max(table(x)))),"\n")
  cat("Kurtosis = " ,kurtosis(x))
}
d1 = descriptive(meso)    
d2 = descriptive(lepto)   ##Kurtosis>3
d3 = descriptive(platy)   ##Kurtosis<3


