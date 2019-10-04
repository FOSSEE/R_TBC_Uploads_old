
# Chapter 16
# Example 16.4 page no. 662 from the pdf..
#use signed rank test to test the hypothesis..

# to do hypothesis testing on effect of sample questions on one's gre score..

# NUll H0: mu1-mu2=50
#alternate:mu1-mu2 <50

with_sample <- c(531,621,663,579,451,660,591,719,543,575)

without_sample <- c(509,540,688,502,424,683,568,748,530,524)

wilcox.test(with_sample,without_sample,mu=50,paired = T,alternative = "less")

cat("since the p-value is",wilcox.test(with_sample,without_sample,mu=50,paired = T,alternative = "less")$p.value,"we reject null and conclude that sample problems don't increase graduate record score by as much as 50 points on average..")

