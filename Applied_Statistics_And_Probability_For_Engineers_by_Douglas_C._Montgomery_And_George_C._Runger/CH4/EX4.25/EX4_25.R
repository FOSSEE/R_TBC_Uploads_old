#Bearing Wear(Pg no. 144)

mean = 5000*0.5*sqrt(pi)
mean

#P(X>6000)
p = pweibull(q = 6000,shape = 2, scale = 5000,lower.tail = FALSE)

cat("only ",round(p*100,digits = 1),"% of all bearings last at least 6000 hours")

