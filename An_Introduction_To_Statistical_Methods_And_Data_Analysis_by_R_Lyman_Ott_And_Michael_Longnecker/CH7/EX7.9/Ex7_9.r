# install car package by writing install.packages("car") command in console  
library(car)
y=c(4.2,2.9,0.2,25.7,6.3,7.2,2.3,9.9,5.3,6.5,0.2,11.3,0.3,17.1,51.0,10.1,0.3,0.6,7.9,7.2,7.2,6.4,9.9,3.5,10.6,10.8,10.6,8.4,6.0,11.9)
additive=c(1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3)
leveneTest(y,additive)
critical_value=qf(1-0.05,2,27)
critical_value
# L < critical value  we fail to reject and conclude that there is insufficient evidence of a difference in the population variances of the percentage increase in mpg for the three additives.


