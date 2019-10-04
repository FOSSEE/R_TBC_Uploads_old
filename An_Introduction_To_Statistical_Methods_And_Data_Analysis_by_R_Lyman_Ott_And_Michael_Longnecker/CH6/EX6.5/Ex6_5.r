library(DescTools)
x = c(0.90, 0.37, 1.63, 0.83, 0.95, 0.78, 0.86, 0.61, 0.38, 1.97)
y = c(1.46, 1.45, 1.76 ,1.44, 1.11 ,3.07 ,0.98 ,1.27 ,2.56 ,1.32)
 
cbind(c(x,y),rank(c(x,y)))

a <- wilcox.test(x,y,correct=FALSE,conf.int = TRUE)
n1 <- length(x)
a$statistic <- a$statistic + n1*(n1+1)/2
names(a$statistic) <- "T.W"
a
# T<83 so  we reject H0 and conclude there is significant evidence that the placebo population has smaller reaction times than the population of alcohol consumers
# p value calculated in book is wrong
# confidence interval for delta (-1.08, -0.25)
 
#  95% confidence interval   for the placebo population median
MedianCI(x,conf.level = 0.95,na.rm = FALSE, method = "exact",R = 10000)
# #  95% confidence interval   for the alcohol population median
MedianCI(y,conf.level = 0.95,na.rm = FALSE, method = "exact",R = 10000)           
         
        
         
