
# mean and sd of the batting league is 0.358 and 0.027 respectively

#a
# z sore for Ted Williams is (0.406-0.358)/0.027
z1 <- (0.406-0.358)/0.027
cat("z-score for Ted Williams is ", z1)
cat("Percentile score for Ted Williams is", pnorm(z1,lower.tail = T))

# z score for George Brett is (0.390-0.358)/0.027
z2 <- (0.390-0.358)/0.027
cat("z score for George Brett is ", z2)
cat("Percentile score for George Brett is",pnorm(z2,lower.tail = T))


cat("The percentile score for Ted Williams is 0.96 while that for George Brett is 0.88. Both the performances are outstanding; however, Ted Williams did slightly better than George Brett. ")