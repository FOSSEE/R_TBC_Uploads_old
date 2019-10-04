
# Chapter 8
# Example 8.9 page no. 249 from the pdf..
# The t- distribution Problem


# find k such that P(k<T<-1.761)= 0.045, sample size= 15,normal distribution

n <- 15

cat("The value of k such that P(k<T<-1.761)= 0.045 is",qt(pt(-1.761,n-1)-0.045,n-1))
