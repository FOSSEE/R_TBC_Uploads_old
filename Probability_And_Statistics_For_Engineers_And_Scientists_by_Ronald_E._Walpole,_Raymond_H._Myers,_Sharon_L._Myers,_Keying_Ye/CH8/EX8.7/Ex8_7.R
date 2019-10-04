
# Chapter 8
# Example 8.7 page no. 245 from the pdf..
# The Chi-squared Distribution Problem..

# given mu=3,sd=1,data of 5 batteries,
# to show whether manufacturer should be convinced that batteries have a sd of 1..

sd = 1

obs <- c(1.9,2.4,3.0,3.5,4.2)

chi.sq <- var(obs)*(length(obs)-1)/(sd^2)

cat("The value of chi^2 is",chi.sq,"with 4 degrees of freedom")

cat("Since 95% of the chisq values with 4 degrees of freedom fall between",qchisq(0.025,df=4),"and",qchisq(0.975,df= 4),"the computed value with sig^2= 1 is reasonable and therefore manufacturer has no reason to suspect that the sd is other than 1")










