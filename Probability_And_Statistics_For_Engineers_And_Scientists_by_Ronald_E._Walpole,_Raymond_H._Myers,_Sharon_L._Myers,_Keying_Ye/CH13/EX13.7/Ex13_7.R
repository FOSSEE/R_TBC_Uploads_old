
# Chapter 13
# Example 13.7 page no. 549 from the pdf..
# Random Effects Model..
# to find the batch variance component from the data..

m1 <- c(9.7,5.6,8.4,7.9,8.2,7.7,8.1)

m2 <- c(10.4,9.6,7.3,6.8,8.8,9.2,7.6)

m3 <- c(15.9,14.4,8.3,12.8,7.9,11.6,9.8)

m4 <- c(8.6,11.1,10.7,7.6,6.4,5.9,8.1)

m5 <- c(9.7,12.8,8.7,13.4,8.3,11.7,10.7)

dat <- cbind(m1,m2,m3,m4,m5)

b <- c(t(as.matrix(dat)))

a <- c("b1","b2","b3","b4","b5")

n_batch <- 5  # n. of treatment groups

n_row <- 7  # no. of rows..

batch <- gl(n_batch,1,n_row*n_batch,factor(a))  # vector of treatment factors corresponding to each element of vector b..

summary(c <- aov(b~batch))

cat("From the table we can calculate the estimated variance from the mean sq. values which comes out to be",(18.149-4.068)/n_row)

