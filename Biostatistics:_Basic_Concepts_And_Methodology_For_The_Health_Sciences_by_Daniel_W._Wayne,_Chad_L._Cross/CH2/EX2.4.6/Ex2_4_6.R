##Example 2.4.6 Pg.42
##Skewness

##install.packages("moments",dependencies = T)
library(moments)

no_skew = c(5,5,6,6,6,7,7,7,7,8,8,8,8,8,9,9,9,9,10,10,10,11,11)
right_skew = c(5,5,5,5,5,5,5,6,6,6,6,6,6,7,7,7,7,7,8,8,8,8,9,9,9,10,10,11)
left_skew = c(5,6,6,7,7,7,8,8,8,8,9,9,9,9,9,10,10,10,10,10,10,11,11,11,11,11,11,11)
par(mfrow=c(1,3))
hist(no_skew,main="No skew")
hist(right_skew,main="Right skew")
hist(left_skew,main="Left skew")
dev.off()

descriptive <- function(x)
{
  cat("Mean = " ,mean(x), "\n")
  cat("Median = " ,median(x),"\n")
  cat("Mode = " ,names(which(table(x)==max(table(x)))),"\n")
  cat("Skewness = " ,skewness(x))
}
d1 = descriptive(no_skew)
d2 = descriptive(right_skew)
d3 = descriptive(left_skew)


