#Semiconductor Laser(Pg no. 147)

o = 10
w = 1.5

#P(X > 10000)
p = 1 - plnorm(10000, meanlog = o, sdlog = w)
cat("P(X > 10000) =",p)

x = qlnorm(0.99,o,w,lower.tail = FALSE)
cat("x =",round(x,digits = 2),"hours")

E_x = exp(o+(w^2/2))
cat("mean =",round(E_x,digits = 1),"hours")

V_x = (exp((2*o)+(w^2)))*(exp((w^2))-1)
cat("standard deviation =",sqrt(V_x),"hours")

#The answer may slightly vary due to rounding off values