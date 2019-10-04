#Surface Finish for Titanium Alloy(Pg no. 412)

s1 = 5.1
s2 = 4.7
n1 = 11
n2 =16

statistic = s1^2/s2^2
statistic

f_max = qf(0.05,n2-1,n1-1,lower.tail = FALSE)
f_max
f_min = qf(0.95,n2-1,n1-1,lower.tail = FALSE)
f_min


cat("the interval is (",round(sqrt(statistic*f_min), digits = 3),",",round(sqrt(statistic*f_max), digits = 3),")")

#The answer may slightly vary due to rounding off of values