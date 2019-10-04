#Defective Bearings(Pg no. 419)

n1 = n2 = 85
p1 = 10/n1
p2 = 8/n2

z = qnorm(0.025,0,1,lower.tail = FALSE)

lim1 = p1 -p2 - z*sqrt((p1*(1-p1))/n1 + (p2*(1-p2))/n2)
lim2= p1 -p2 + z*sqrt((p1*(1-p1))/n1 + (p2*(1-p2))/n2)

cat("the required interval is (",round(lim1, digits = 4),",",round(lim2, digits = 4),")")
# The answer may slightly vary duet to rounding off values