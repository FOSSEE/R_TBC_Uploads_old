#Beverage Volume(Pg no. 187)

E_Xbar = 12.1
V_Xbar = 0.1^2/10
Xbar = 12

z = (Xbar - E_Xbar)/sqrt(V_Xbar)

p = pnorm(z,0,1,lower.tail = TRUE)
cat("the probability that the average volume of 10 cans selected from this process is less than 12 oz is",round(p,digits = 5))

#The answer may slightly vary due to rounding off values