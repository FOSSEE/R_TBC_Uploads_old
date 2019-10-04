
# Chapter 9
# Example 9.12 page no. 290 from the pdf..
# Confidence Interval Evaluation For difference of 2 means when their variance is not equal and Unknown..

# given unequal variances,independent samples,approx. normal

a <- c(3.84,3.07,15)  # parameters for 1st station

b <- c(1.49,0.80,12)  #parameters for second station

# to find the 95% ci for mu1-mu2

v <- (((a[2]*a[2]/a[3] + b[2]*b[2]/b[3])^2)/((((a[2]*a[2]/a[3])^2)/(a[3]-1))+(((b[2]*b[2]/b[3])^2)/(b[3]-1))))

c <- qt(0.975,v)*sqrt((a[2]*a[2]/a[3]) + (b[2]*b[2]/b[3]))

cat("The 95% confidence interval for mu1-mu2 is",a[1]-b[1]-c,a[1]-b[1]+c,"milligram")


# The answer in T.B is rounded to 2 decimal places.