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

#A
#H0 : mu1 =mu2 =mu3 =mu4
#H1 : the mean resistance differs for at least two treatments. 
#F ratio for block is:

F_value_chemical = 12.33
compare = qf(1-0.05,3,3)

if(F_value_chemical < compare){
  cat("Null hypothesis is accepted")
} else{
  cat("Null hypothesis is rejected")
}


#B
#H0 : m1 =mu2
#H1 : there is evidence of significant difference between the block (fabric) means
#F ratio for block is:

F_value_block = 32
compare = qf(1-0.05,1,3)

if(F_value_block < compare){
  cat("Null hypothesis is accepted")
} else{
  cat("Null hypothesis is rejected")
}
