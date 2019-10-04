#Example 10 chapter 8 page no 356
P=matrix(c(0.8,0.6,0.2,0.4),2,2)
p0 = matrix(c(0.5,0.5),1,2)
p1=p0%*%P
cat("prob of A B  after 1 year",p1)
p2=p1%*%P
cat("prob of A B  after 2 year",p2)
#answer vary from the book as book has wrong calculation