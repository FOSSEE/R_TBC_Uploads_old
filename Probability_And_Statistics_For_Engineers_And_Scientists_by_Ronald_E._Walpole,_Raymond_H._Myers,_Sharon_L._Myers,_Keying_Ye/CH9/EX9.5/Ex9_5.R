
# Chapter 9 
# Example 9.5 page no. 275 from the pdf..
# To Find 95% Confidence Interval for mean..


# to calculate the 95% confidence interval for the contents of 7 containers of sulphuric acid


a <- c(9.8,10.2,10.4,9.8,10.0,10.2,9.6)


cat("The confidence interval for the above data sample is"," ")

t.test(a,conf.level = 0.95)$conf.int



