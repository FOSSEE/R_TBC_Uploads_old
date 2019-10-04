#Example 15 chapter 8 page no 361
P = matrix(c(0,1,0,1/6,1/2,1/3,0,2/3,1/3),3,3,TRUE)
p0 = matrix(c(1,0,0),1,3)    # for 0,1,2 books initially 0 book
p1= p0%*%P
p2= p1%*%P
p3= p2%*%P
cat("prob of 2 books after 3 weeks",p3[3])
b=matrix(c(0,0,1),3,1)
A=matrix(c(-1,1/6,0,1,-1/2,2/3,1,1,1),3,3,byrow = TRUE)
cat("prob of 2 book in long run",round(solve(A,b),3)[3])
