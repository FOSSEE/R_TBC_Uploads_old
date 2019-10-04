                                        # Page no. : 453

# Inferences About the Population Variance

n <- 20   
variance <- 0.0025   
df <- 19   # Degrees of Freedom

chisq_1 <- qchisq(0.975,df)   
chisq_2 <- qchisq(0.025,df)   

# Interval Estimation 

IE1 <- sqrt((df * variance) / chisq_1)
IE2 <- sqrt((df * variance) / chisq_2)

cat("Interval Estimation at 95% confidence interval for population standard deviation is",IE1,
    "to",IE2)