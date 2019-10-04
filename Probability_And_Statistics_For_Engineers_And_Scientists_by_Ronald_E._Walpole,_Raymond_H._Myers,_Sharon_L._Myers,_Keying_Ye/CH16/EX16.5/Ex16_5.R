
# Chapter 16
# Example 16.5 page no. 666 from the pdf..
# to perform wilcoxin rank sum test...

# Null H0 :mu1=mu2
#alternate: mu1!=mu2

brand_a <- c(2.1,4.0,6.3,5.4,4.8,3.7,6.1,3.3)

brand_b <- c(4.1,0.6,3.1,2.5,4.0,6.2,1.6,2.2,1.9,5.4)

wilcox.test(brand_a,brand_b,alternative = "two.sided")

cat("Since the p-value is",wilcox.test(brand_a,brand_b,alternative = "two.sided")$p.value,"we do not reject null and conclude that there is no significant difference in median nicotine contents of the above two brand of cigarettes")
