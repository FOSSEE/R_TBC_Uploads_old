#Alloy Adhesion(Pg no. 298)

n = 22
sd = 3.55
df = n - 1
t = qt(0.025,df,lower.tail = FALSE)
mean = 13.71

min = mean - t*sd*sqrt(1+(1/n))
max = mean + t*sd*sqrt(1+(1/n))

cat("A 95% prediction interval on the load at failure for this specimen is",round(min,digits = 2),"<= X <= ",round(max,digits = 2))