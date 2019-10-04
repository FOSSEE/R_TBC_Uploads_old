rm("c")
x =c(3,1,4,2,0,2,3,3,5,4,1,1,1,2,0,3,2,2,4,1,3,0,2,3)

sample =1:24
dat <- data.frame(sample,x)

p <- mean(dat$x/50)


u <- p + 3*sqrt(p*(1-p)/50)

l <- p- 3*sqrt(p*(1-p)/50)

cat("The LCL and UCL are",0,"and", u,"respectively")

#Since l is neg. , we take lower limit to be 0.

#install the package qcc

library(qcc)
qcc(dat$x, sizes =50,type="p")
