
# Chapter 9
# Example 9.14 page no. 297 from the pdf..
# Estimating a Proportion for Single Sample..


# to calculate the 95% confidence interval
# given 
n <- 500   # size of random sample

x <- 340   # number subscribed to HBO from te size of random sample

cat("The confidence interval for the actual proportion of families with TV sets in the city subscribed to HBO is"," ")

prop.test(340,500,0.68)$conf.int
