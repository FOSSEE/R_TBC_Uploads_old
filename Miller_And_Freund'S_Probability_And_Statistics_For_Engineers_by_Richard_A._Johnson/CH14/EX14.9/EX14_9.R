#install.packages("nortest")
library(nortest)
#distances in inches of 10 pinholes from one edge of a long strip
data<-c(2.4,4.4,4.8,6.2,14.8,19.5,23.1,25.0,28.2,28.7)
ad.test(data)
print(" there for According to the large sample critical value, we fail to reject the null hypothesis ")