#Sample variance shortcut(Pg no. 203)

samples = c(12.6,12.9,13.4,12.3,13.6,13.5,12.6,13.1)
n = length(samples) #number of samples
x = sum(samples) # sum of individual samples
y = sum(samples^2) # sum of square of individual samples

v = (y - ((x)^2/n))/(n-1)

cat("sample variance is ",v) #pounds^2
cat("sample standard deviation is",round(sqrt(v),digits = 2)) #pounds