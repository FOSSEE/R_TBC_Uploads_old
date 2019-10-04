#Bayes Estimator for the Mean of a Normal Distribution(Pg no. 265)

n = 10
variance = 4
mean0 = 0
variance0 = 1
sample_mean = 0.75

estimated_mean = ((variance/n)*mean0 + (variance0)*sample_mean)/(1 + (variance/n))
cat("Estimated mean is ",round(estimated_mean,digits = 3))