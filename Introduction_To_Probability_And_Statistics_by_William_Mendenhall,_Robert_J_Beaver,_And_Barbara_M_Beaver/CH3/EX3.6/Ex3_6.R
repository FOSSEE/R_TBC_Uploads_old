x<-c(1360,1940,1750,1550,1790,1750,2230,1600,1450,1870,2210,1480)
y<-c(278.5,375.7,339.5,329.8,295.6,310.3,460.5,305.2,288.6,365.7,425.3,268.8)
correlation_Coefficient <- round(cor(x, y),4)
cat("correlation coefficient of x and y is",correlation_Coefficient)
