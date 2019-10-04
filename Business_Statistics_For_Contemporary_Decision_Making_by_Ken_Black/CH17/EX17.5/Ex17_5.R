# FRIEDMAN TEST :

Brand <- matrix(c(3,5,2,4,1,1,3,2,4,5,3,4,5,2,1,2,3,1,4,5,5,4,2,1,3,1,5,3,4,2,4,1,3,2,5,
              2,3,4,5,1,2,4,5,3,1,3,5,4,2,1),
            nrow=10,ncol=5,byrow = TRUE)
Brand

# Chi-square value, alpha =0.01 :
qchisq(.99,df=4)

# observed value :
friedman.test(Brand)

# Because the observed value of = 3.68 is not greater than the critical value, 13.2767, 
# the researchers fail to reject the null hypothesis. 