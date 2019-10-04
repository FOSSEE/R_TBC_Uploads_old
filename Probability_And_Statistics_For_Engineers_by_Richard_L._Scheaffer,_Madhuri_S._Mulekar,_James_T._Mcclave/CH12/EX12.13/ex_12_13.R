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

#MSE = 1
s=sqrt(1)


# Bonferroni Method ,c=3
alpha =0.10
c=6
k=(alpha/2)/c
t = qt(1-k,df=3)

x= t*s*sqrt(1/2 + 1/2)
cat("mu1 -mu2 =", mean(c1) -mean(c2) -x,mean(c1) -mean(c2) +x)
cat("mu1 -mu3 =", mean(c1) -mean(c3) -x,mean(c1) -mean(c3) +x)
cat("mu1 -mu4 =", mean(c1) -mean(c4) -x,mean(c1) -mean(c4) +x)
cat("mu2 -mu3 =", mean(c2) -mean(c3) -x,mean(c2) -mean(c3) +x)
cat("mu2 -mu4 =", mean(c2) -mean(c4) -x,mean(c2) -mean(c4) +x)
cat("mu3 -mu4 =", mean(c3) -mean(c4) -x,mean(c3) -mean(c4) +x)
#Simialrly, other differences can be computed
