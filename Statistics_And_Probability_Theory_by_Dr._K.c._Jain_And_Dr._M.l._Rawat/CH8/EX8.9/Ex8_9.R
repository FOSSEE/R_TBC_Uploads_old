#Example 9 chapter 8 page no. 355
P=matrix(c(0,1/2,1,1/2),2,2)
P1=matrix(c(5/6,1/6),1,2)
P3 = (P1 %*% P) %*% P
cat("prob that he takes bus on third day=",P3[1])
b=matrix(c(0,1),2,1)
A=matrix(c(-1,0.5,1,1),2,2,byrow = TRUE)
cat("prob of bus and scooter in steady state condition",round(solve(A,b),2))
