
# Chapter 16
# Example 16.8  page no. 675 and example 16.9 page no.677 from the pdf..
# Rank Correlation Coefficient..

# to find the rank correlation coefficient between tar and nicotine content in cigarettes..
# I am solving ex 8 and 9 in this code only as in 8 correlation coefficient is asked and in 9th hypothesis testing of the sam eproblem is done 

# to do hypothesis testing of correlation between tar and nicotine content in cigarettes
# null H0:rho=0
# alternate H1: rho>0
# alpha =0.01

tar <- c(14,17,28,17,16,13,24,25,18,31)

nicotine_cont <- c(0.9,1.1,1.6,1.3,1.0,0.8,1.5,1.4,1.2,2.0)

cor.test(tar,nicotine_cont,method = "spearman",alternative = "greater")

cat("From the test we can see the value of rank correlation coefficint(rho) is 0.9665698 indicating high positive correlation between the two variables..")

cat("Since the p-value is very small,",cor.test(tar,nicotine_cont,method = "spearman",alternative = "greater")$p.value,"we reject null hypothesis and conclude that there is significant correlation between the two variables..")

# ignore the warning in each case..


