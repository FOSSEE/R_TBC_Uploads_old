
# Chapter 16
# Example 16.2 page no. 659 from the pdf..
# Hypothesis Testing Using Sign Test..
# to test the hypothesis with 0.05 level of significance

# Null :mu1-mu2 =0
#alternate:mu1-mu2 !=0


install.packages("BSDA")  # package for sign testing
#if already installed comment it..


library("BSDA")

rad_tires <- c(4.2,4.7,6.6,7.0,6.7,4.5,5.7,6.0,7.4,4.9,6.1,5.2,5.7,6.9,6.8,4.9)

bel_tires <- c(4.1,4.9,6.2,6.9,6.8,4.4,5.7,5.8,6.9,4.9,6.0,4.9,5.3,6.5,7.1,4.8)

diff <- data.frame(rad_tires,bel_tires)

SIGN.test(rad_tires,bel_tires,alternative = "greater",paired =T)

cat("Since the p-value is",SIGN.test(rad_tires,bel_tires,alternative = "greater",paired =T)$p.value,"we reject null, so on average radial tires do improve fuel economy")


#the answer is slightly different than in the T.B as in T.B normal approximation is used..
