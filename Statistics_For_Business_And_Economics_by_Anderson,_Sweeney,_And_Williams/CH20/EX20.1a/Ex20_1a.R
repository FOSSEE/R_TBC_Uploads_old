                                  # Page no. : 913 - 919

# Sample Mean Chart : Process Mean and SD Unknown

o1 <- c(3.5056, 3.4882, 3.4897, 3.5153, 3.5059, 3.4977, 3.4910, 3.4991, 3.5099, 3.4880, 3.4881,
        3.5043, 3.5043, 3.5004, 3.4846, 3.5145, 3.5004, 3.4959, 3.4878, 3.4969) 
o2 <- c(3.5086, 3.5085, 3.4898, 3.5120, 3.5113, 3.4961, 3.4913, 3.4853, 3.5162, 3.5015, 3.4887,
        3.4867, 3.4769, 3.5030, 3.4938, 3.4832, 3.5042, 3.4823, 3.4864, 3.5144)
o3 <- c(3.5144, 3.4884, 3.4995, 3.4989, 3.5011, 3.5050, 3.4976, 3.4830, 3.5228, 3.5094, 3.5141,
        3.4946, 3.4944, 3.5082, 3.5065, 3.5188, 3.4954, 3.4964, 3.4960, 3.5053)
o4 <- c(3.5009, 3.5250, 3.5130, 3.4900, 3.4773, 3.5014, 3.4831, 3.5083, 3.4958, 3.5102, 3.5175,
        3.5018, 3.5014, 3.5045, 3.5089, 3.4935, 3.5020, 3.5082, 3.5070, 3.4985)
o5 <- c(3.5030, 3.5031, 3.4969, 3.4837, 3.4801, 3.5060, 3.5044, 3.5094, 3.5004, 3.5146, 3.4863,
        3.4784, 3.4904, 3.5234, 3.5011, 3.4989, 3.4889, 3.4871, 3.4984, 3.4885)

DF <- data.frame(o1, o2, o3, o4, o5)

sample_mean <- rowMeans(DF)
sample_range <- c(0.0135, 0.0368, 0.0233, 0.0316, 0.0340, 0.0099, 0.0213, 0.0264, 0.0270, 0.0266,
                  0.0312, 0.0259, 0.0274, 0.0230, 0.0243, 0.0356, 0.0153, 0.0259, 0.0206, 0.0259)

DF <- cbind(DF, sample_mean, sample_range)
View(DF)

AR <- mean(DF$sample_range)   # Average Range
OM <- mean(DF$sample_mean)  # Overall Mean
n <- 5   # Sample Observations
d2 <- 2.362
A2 <- 3 / (d2 * sqrt(n))

UCL <- OM + (A2 * AR)   # Upper Control Limit
LCL <- OM - (A2 * AR)   # Lower Control Limit

cat("UCL is ",UCL)
cat("LCL is",LCL)

library(qicharts2)

qic(DF$sample_mean, xlab = "Sample Number", ylab = "Sample Mean", title = "Sample Mean Chart")

d3 <- 0.864

D1 <- 1 + (3 * (d3 / d2))
D2 <- 1 - (3 * (d3 / d2))

UCL2 <- AR * D1
LCL2 <- AR * D2

cat("UCL is ",UCL2)
cat("LCL is",LCL2)   # Book answer is different 

qic(DF$sample_range, xlab = "Sample Number", ylab = "Sample Range", title = "R Chart")

p <- 0.03
n <- 200

sigma <- sqrt((p * (1 - p)) / n)

UCL3 <- p + 3 * sigma
LCL3 <- p - 3 * sigma

cat("UCL is ",UCL3)
cat("LCL is",LCL3)

# Data for P chart is not available in Book

UCL4 <- n * p + 3 * sqrt(n * p * (1 - p))
LCL4 <- n * p - 3 * sqrt(n * p * (1 - p))

cat("UCL is ",UCL4)
cat("LCL is",LCL4)