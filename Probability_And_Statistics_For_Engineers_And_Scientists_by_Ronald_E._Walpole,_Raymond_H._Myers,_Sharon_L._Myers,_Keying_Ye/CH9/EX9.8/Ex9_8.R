
# Chapter 9
# Example 9.8 page no. 279 from the pdf..
# to find 99% prediction interval..

# sample size = 30,mean = 96.2%, sd = 0.8

mu <- 96.2

sd <- 0.8

n <- 30

c <- sqrt(1+1/n) 

t_val <- abs(qt(0.005,df= 29))

cat("The prediction interval for a new observation is",mu-t_val*sd*c,"and",mu+t_val*sd*c)

