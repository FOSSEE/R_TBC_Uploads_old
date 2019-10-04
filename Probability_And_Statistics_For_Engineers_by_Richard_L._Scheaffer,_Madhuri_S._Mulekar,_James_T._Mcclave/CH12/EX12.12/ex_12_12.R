c1 =c(5,9)
c2 =c(3,8)
c3 =c(8,13)
c4 =c(4,6)

dat <- rbind(c1,c2,c3,c4)   # combining rows to make matrix..

a <- c(t(as.matrix(dat)))   # concatenate different rows into a vector..

b <- c("b1","b2") # treatment levels

n_tr <- 2  # no. of treatment levels

n_cont <- 4 # no. of control blocks..
block <- gl(n_tr,1,n_cont*n_tr,factor(b))  # vector of treatment factors corresponding to each element of vector a..

chemical <- gl(n_cont,n_tr,n_tr*n_cont) # vector of blocking factors corresponding to each element in vector a..

print("The Analysis of Variance table is:")

summary(aov(a~block+chemical)) # anova table display..

#F ratio for block is:

F_value_chemical = 12.33