#Example 2 chapter 7 page no 297
l = 4       #arrival_rate persons per hour
u = 60/12   # mean service rate per hour
ls = l/(u-l)      # average number of person in the system
cat(ls,"average no of persons in the system")
rho = l/u
cat(rho/((1-rho)^2), "variance of queue length")
cat((1-rho)*8,"hrs expected idle time in a day of 8 hrs")
cat(rho^5,"prob of more than 5 customers")
