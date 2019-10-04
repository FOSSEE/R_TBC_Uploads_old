#Example 17 chapter 8 page no. 364
p0=matrix(c(0,0,1,0,0),1,5)    #5 states for 0 5 10 15 20 rs
tpm=matrix(c(1,0,0,0,0,1/2,0,1/2,0,0,0,1/2,0,1/2,0,0,0,1/2,0,1/2,0,0,0,0,1),5,5,TRUE)
p1=p0%*%tpm
p2=p1%*%tpm
p3=p2%*%tpm
p4=p3%*%tpm
p5=p3%*%tpm
cat("prob gambler looses all money at 5th game",p5[1])
p6=p5%*%tpm
p7=p6%*%tpm
cat("prob that game last more than 7 terms",p7[2]+p7[3]+p7[4])
