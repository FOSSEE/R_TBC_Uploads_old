x<-c(14.2, 5.3 ,2.9, 4.2,1.2, 4.3, 1.1, 2.6 ,6.7 ,7.8 ,25.9, 43.8, 2.7,
     5.6, 7.8 ,3.9, 4.7, 6.5, 29.5 ,2.1 ,34.8 ,3.6 ,5.8, 4.5, 6.7 )
bootmed = apply(matrix(sample(x, rep=TRUE, 10^4*length(x)), nrow=10^4), 1, median)
# The 95% confidence interval for the population median is given by
print("Confidence interval is")
 quantile(bootmed, c(.025, 0.975))