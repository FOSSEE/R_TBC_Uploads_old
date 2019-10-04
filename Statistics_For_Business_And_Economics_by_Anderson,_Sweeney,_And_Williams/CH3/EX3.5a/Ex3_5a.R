                                  # Page no. : 115-116 and 119

# Dataset

x <- c(2,5,1,3,4,1,5,3,4,2)  
y <- c(50,57,41,54,54,38,63,48,59,46)

dataset <- data.frame(x,y)

# Coveriance

coveriance <- cov(dataset$x,dataset$y)

cat("Value of covariance is ",coveriance)

# Correlation Coefficient

correlation <- cor(dataset$x,dataset$y)

cat("Value of correlation coefficient is ",correlation)