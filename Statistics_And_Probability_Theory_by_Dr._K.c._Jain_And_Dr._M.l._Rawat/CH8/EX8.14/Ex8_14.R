#Example 14 chapter 8 page no. 359
P_ABC = matrix(c(200,500,300),1,3)
tpm = matrix(c(160/200,20/200,20/200,35/500,450/500,15/500,25/300,20/300,255/300),3,3,TRUE)
feb1=P_ABC%*%tpm
cat("on 1st Feb",P_ABC%*%tpm)
mar1=feb1%*%tpm
cat("on 1st March",round(mar1,0))
apr1=mar1%*%tpm
cat("on 1st April",round(apr1))
b=matrix(c(0,0,1),3,1)
A=matrix(c(-0.2,0.07,0.083,0.1,-0.1,0.067,1,1,1),3,3,byrow = TRUE)
cat("customers in steady state condition",round(solve(A,b),3)*1000)

    