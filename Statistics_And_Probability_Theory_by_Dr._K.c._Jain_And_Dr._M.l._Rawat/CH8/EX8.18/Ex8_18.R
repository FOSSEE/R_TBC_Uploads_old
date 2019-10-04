#Example 18 chapter 8 page no. 366
tpm=matrix(c(0.9,0.1,0.5,0.5),2,2,TRUE)
b=matrix(c(0,1),2,1)
A=matrix(c(-0.1,0.5,1,1),2,2,byrow = TRUE)
cat("prob in steady state condition",round(solve(A,b),3))
