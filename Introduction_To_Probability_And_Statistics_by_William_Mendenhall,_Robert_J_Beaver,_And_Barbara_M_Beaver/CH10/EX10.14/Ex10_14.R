variance1 <- 7.14;
variance2 <- 3.21;
n1 <- 10;
n2 <- 8;
df1 <- n1 - 1
df2 <- n2 - 1
alpha <- 0.05
rejection_region <- round(qf(1 - (alpha / 2), df1, df2),2)
rejection_region
test_statistics <- variance1/variance2;
cat("the calculated value of test statistics is",test_statistics)
if(test_statistics > rejection_region){
  print("reject the null hypothesis")
}else{
  print("Cannot reject null hypothesis and there is sufficient evidence to indicate a difference in the population variance")
}