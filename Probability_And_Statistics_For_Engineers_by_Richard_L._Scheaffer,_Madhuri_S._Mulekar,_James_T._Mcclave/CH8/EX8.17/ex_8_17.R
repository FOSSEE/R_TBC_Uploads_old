defective =c(6,3,4,0,2,7,3,1,0,0,4,3,2,2,6,5,0,7,2,1)
sample =1:20
dat <- data.frame(sample,defective)
n=20
c =sum(defective)/n
u =c + 3*sqrt(c)
l =c - 3*sqrt(c)

cat("The LCL and UCL are",0,"and", u,"respectively")
#Since l is neg. , we take lower limit to be 0.

# install the package qcc.
library(qcc)
qcc(dat$defective, type = "c")
