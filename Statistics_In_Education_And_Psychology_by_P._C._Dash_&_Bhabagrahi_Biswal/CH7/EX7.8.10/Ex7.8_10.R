#Page.No 7.40 - 7.41

M<-c(40,30) # Mean values
N<-c(20,30) # No.of students in a class
S.D<-c(8,4) # Std deviation of students

M.comb<-weighted.mean(M,N)

# Difference between the mean of the 1st and 2nd distribution and combined mean
d1sqr<-(40-M.comb)^2
d2sqr<-(30-M.comb)^2

sigma.comb<-sqrt(((20*(64-d1sqr))+(30*(16+d2sqr)))/50)

cat("The combined mean is",M.comb)

cat("The combined standrad deviation is ",sigma.comb)
