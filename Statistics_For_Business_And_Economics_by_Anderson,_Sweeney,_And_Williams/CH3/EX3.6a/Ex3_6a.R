                                      # Page no. : 124 - 125

# Data

purchase <- c(1,2,3,4,5)
cost <- c(3.00,3.40,2.80,2.90,3.25)
pound <- c(1200,500,2750,1000,800)

dataset <- data.frame(purchase,cost,pound)

# Weighted Mean

mean <- weighted.mean(dataset$cost,dataset$pound)

cat("Weigted mean for the dataset is",mean)