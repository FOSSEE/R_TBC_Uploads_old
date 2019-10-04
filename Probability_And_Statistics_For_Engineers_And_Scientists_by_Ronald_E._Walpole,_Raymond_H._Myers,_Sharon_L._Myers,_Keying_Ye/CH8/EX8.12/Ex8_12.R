
# Chapter 8
# Example 8.12 page no. 258 from the pdf..
# To Construct a Normal quantile-quantile plot..

# to plot the normal quantile-quantile plot of two data samples and draw conclusion whether they are from same normal distribution.

y <-c(5030,13700,10730,11400,860,2200,4250,15040,4980,11910,8130,26850,17660,22800,1130,1690)

b <- c(2800,4670,6890,7720,7030,7330,2810,1330,3320,1230,2130,2190)


qqnorm(y,ylim = range(y,b),col = "blue")
par(new= TRUE)
qqnorm(b,ylim=range(y,b),col = "red")


# The clustering of observation would make it seem unlikely that two sample came from common normal distribution.

