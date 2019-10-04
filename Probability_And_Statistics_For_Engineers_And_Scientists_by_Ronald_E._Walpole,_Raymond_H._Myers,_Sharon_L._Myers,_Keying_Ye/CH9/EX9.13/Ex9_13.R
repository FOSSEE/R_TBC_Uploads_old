
# Chapter 9
# Example 9.13 page no. 293 from the pdf..
# to find Confidence Intervals for Paired Observations..

levels_plasma <- c(2.5,3.1,2.1,3.5,3.1,1.8,6.0,3.0,36.0,4.7,6.9,3.3,4.6,1.6,7.2,1.8,20.0,2.0,2.5,4.1)

levels_fat <- c(4.9,5.9,4.4,6.9,7.0,4.2,10.0,5.5,41.0,4.4,7.0,2.9,4.6,1.4,7.7,1.1,11.0,2.5,2.3,2.5)


cat("The 95% confidence interval for paired observation is", " ")

t.test(x= levels_plasma,y= levels_fat,paired=TRUE,aternative="two.sided")$conf.int



