#Ex4.15, Page 156
#Answers may slightly vary due to rounding off of values

#z(.05)
x<-0.05
z<-100*(1-x)

plot.new()
title(main="Red: z(0.05)
Blue: -z(0.05)")

#z(.05)
print(paste(z,"th percentile:",qnorm(z/100)))
curve(dnorm, xlim = c(-3, 3), ylim = c(0, 0.5), xlab = "z", ylab="f(z)")
prob = z/100
x = c(-3, seq(-3, qnorm(prob), by=.001), qnorm(prob))
y = c(0, dnorm(seq(-3, qnorm(prob), by=.001)), 0)
polygon(x, y, col="red")

#-z(.05)
print(paste("-z(.05)",-qnorm(z/100)))
x = c(-3, seq(-3, -qnorm(prob), by=.001), -qnorm(prob))
y = c(0, dnorm(seq(-3, -qnorm(prob), by=.001)), 0)
polygon(x, y, col="blue")

