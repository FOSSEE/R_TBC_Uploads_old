#Semiconductor Etch Variability(Pg no. 410)

s1 = 1.96
s2 = 2.13
alpha = 0.05
n1 = n2 =16

statistic = s1^2/s2^2
statistic

f_max = qf(0.025,n1-1,n2-1,lower.tail = FALSE)
f_min = qf(0.975,15,15,lower.tail = FALSE)

if(f_min < statistic && statistic < f_max)
{
  cat("we cannot reject the null hypothesis at 0.05 level of significance")
}