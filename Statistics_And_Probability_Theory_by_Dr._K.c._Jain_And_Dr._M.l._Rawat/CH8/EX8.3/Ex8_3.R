#Example 3 chapter 8 page no. 348
p0 = matrix(c(0.4 , 0.6) , 1,2)
p=matrix(c(0.7,0.4,0.3,0.6),2,2)
p1=p0%*%p
cat("prob distribution after step 1",p1)
p2=p1%*%p
cat("prob distribution after step 2 ",p2)
