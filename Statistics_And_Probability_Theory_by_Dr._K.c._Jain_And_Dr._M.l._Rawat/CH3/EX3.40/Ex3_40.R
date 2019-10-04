#Example 40 Chapter 3 page no. 155
lemda=1   #mean rate 1 per week
t=3
m=0
cat("prob no failure in 3 weeks ",ppois(m,t,lemda))
cat("prob lessthan 5 failure in 10 weeks ",ppois(5,10,lemda))
#ppois funtion for poisson distribution