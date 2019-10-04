#Example 4 chapter 8 page no 349
ABC = matrix(c(400,500,600),1,3)
tpm = matrix(c(325/400,1/10,25/600,2/16,7/10,0,1/16,2/10,23/24),3,3)
cat("no. of clients of A B C after 1 year",round(ABC%*%tpm,digits = 0))
