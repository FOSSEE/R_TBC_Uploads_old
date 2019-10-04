#St. John's Wort(Pg no. 415)

x1 = 19
x2 = 27
n1 = n2 = 100
p1 = x2/n2
p2 = x1/n1

p = (x1+x2)/(n1+n2)
cat("p =",p)

statistic = (p1-p2)/sqrt(p*(1-p)*((1/n1)+(1/n2)))
statistic

p = 2*(1-pnorm(statistic,0,1,lower.tail = TRUE))
cat("P-value =",p)

if(p>=0.05)
{
  cat("we cannot reject the null hypothesis")
}