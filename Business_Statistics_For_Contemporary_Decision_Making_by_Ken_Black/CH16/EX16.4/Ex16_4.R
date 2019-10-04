# CHI-SQUARE TEST OF INDEPENDENCE :

Age = matrix(c(26,95,18,41,40,20,24,13,32),nrow=3,ncol=3,byrow = TRUE)  
dimnames(Age) = list(c("21-34","35-55",">55"),c("Coffee_tea ", "Soft_Drink", "Other")) 
Age

# chi-square expected value when alpha =.01 :
qchisq(.99,df=4)

# The degrees of freedom are (3 - 1)(3 - 1) = 4, and the critical value is 13.2767. 
# The decision rule is to reject the null hypothesis if the observed value of chisquare 
# is greater than 13.2767.


# chi-square observed value :
# installed.pacakges("stats")
library(stats)
chisq.test(Age)

#  The observed value of chi-square, 59.41,is greater than the critical value, 13.2767, 
# so the null hypothesis is rejected. 
