
# Chapter 9 
# Example 9.3 page no. 273 from the pdf..
# To Find the sample size..


# to find the samaple size if we want to be 95% confident that our estimate of mu in ex. 9.2 is off by less than 0.05

sd <- 0.3

n <- ((qnorm(0.975)*sd)/0.05)^2

cat("We can be 95% confident that a random sample of size",as.integer(n)+1,"will provide an estimate xbar differing from mu by an amount less than 0.05")


