tire_A <- c(10.6,9.8,12.3,9.7,8.8)
tire_B <- c(10.2,9.4,11.8,9.1,8.3)
alpha <- 0.05
critical_value <- qt( 1 - alpha/2,df = 4)    
k <- t.test(tire_A,tire_B, paired = TRUE, alternative = "two.sided")
test_statistics <- k[1]
cat(test_statistics > critical_value)
cat("test statistics from t.test() is larger than critical value hence there is difference in the mean wear for tire type A and B")



