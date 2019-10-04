# Determine the 30th percentile of the following eight numbers :
data3 <- c(5,12,13,14,17,19,23,28)
N = 8
P = 30

# 30th percentile value is :
a <- quantile(data3,c(.30))
cat("30th percentile value is : ",a)


