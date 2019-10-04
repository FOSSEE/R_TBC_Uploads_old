#Example 16 chapter 8 page no. 363
tpm=matrix(c(0,3/4,1/4,0,0,1/2,1/2,0,0,0,1/2,1/2,1,0,0,0),4,4,TRUE)
b=matrix(c(0,0,0,1),4,1)
A=matrix(c(-1,0,0,1,3/4,-1/2,0,0,0,0,1/2,-1,1,1,1,1),4,4,byrow = TRUE)
px=(solve(A,b))
x=c(125,0,0,75)
cat("expected maintenance per day",x%*%px)
