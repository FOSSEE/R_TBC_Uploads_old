#Example 12 chapter 8 page no 358
P=matrix(c(0.1,0.6,0.3,0.5,0.2,0.4,0.4,0.2,0.3),3,3)
p0 = matrix(c(0.7,0.2,0.1),1,3)
P2=P%*%P
p2=p0%*%P2
cat("prob of X2 = C  after 2 year",p2[3])
cat("prob of x3=B X2=C x1=C x0=B",p0[2]*P[2,3]*P[3,3]*P[3,2])
