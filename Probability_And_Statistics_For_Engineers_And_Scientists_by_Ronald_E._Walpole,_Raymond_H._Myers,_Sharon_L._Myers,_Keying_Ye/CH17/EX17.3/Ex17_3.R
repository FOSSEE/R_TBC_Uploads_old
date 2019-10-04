# Chapter 17
# Example 17.3 page no. 700 from the pdf..
# UCL and LCL for preliminary control chart values.

# given data on no. of defective components in sample sizes of 50.

def_comp <- c(8,6,5,7,2,5,3,8,4,4,3,1,5,4,4,2,3,5,6,3)

samples <- c(1:20)

dat <- data.frame(samples,def_comp)

m <- mean(dat$def_comp/50)

u <- m + 3*sqrt(m*(1-m)/50)

l <- m- 3*sqrt(m*(1-m)/50)

cat("The LCL and UCL are",l,"and", u,"respectively")





