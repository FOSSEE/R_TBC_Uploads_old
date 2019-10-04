#Linear Function of Independent Normal Random Variables(Pg no. 186)

E_X1 = 2
E_X2 = 5
std_dev1 = 0.1
std_dev2 = 0.2
Y = 14.5
E_Y = 14

var_Y = (4*(0.1)^2)+(4*(0.2)^2)
z = (Y-E_Y)/sqrt(var_Y)

p = pnorm(z,0,1,lower.tail = FALSE)
cat("the probability that the perimeter exceeds 14.5 cm is",round(p,digits = 2))
    
