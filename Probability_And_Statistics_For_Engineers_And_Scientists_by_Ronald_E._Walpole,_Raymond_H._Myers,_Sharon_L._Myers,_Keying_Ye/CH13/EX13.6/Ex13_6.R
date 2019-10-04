
# Chapter 13
# Example 13.8 page no. 537 from the pdf..
# Randomized Complete Block Diagram..

# to to test hypothesis(0.05 level) that machines perform at the same mean rate of speed
# 6 different operators used in randomized block experiment to compare 4 machines..

m1 <- c(42.5,39.3,39.6,39.9,42.9,43.6)

m2 <- c(39.8,40.1,40.5,42.3,42.5,43.1)

m3 <- c(40.2,40.5,41.3,43.4,44.9,45.1)

m4 <- c(41.3,42.2,43.5,44.2,45.9,42.3)

dat <- rbind(m1,m2,m3,m4)   # combining rows to make matrix..

a <- c(t(as.matrix(dat)))   # concatenate different rows into a vector..

b <- c("o1","o2","o3","o4","o5","o6") # treatment levels

n_tr <- 6  # no. of treatment levels

n_cont <- 4 # no. of control blocks..

operator <- gl(n_tr,1,n_cont*n_tr,factor(b))  # vector of treatment factors corresponding to each element of vector a..

machines <- gl(n_cont,n_tr,n_tr*n_cont) # vector of blocking factors corresponding to each element in vector a..

print("The Analysis of Variance table is:")

summary(aov(a~operator+machines)) # anova table display..



