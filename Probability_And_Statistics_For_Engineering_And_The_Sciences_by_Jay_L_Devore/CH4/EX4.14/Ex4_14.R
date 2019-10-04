#Ex4.14, Page 155
#Answers may slightly vary due to rounding off of values

print(paste("99th percentile:",qnorm(0.99)))
print(paste("1st percentile:",qnorm(0.01)))

#Blue=> 99th percentile
#Red=>  1st percentile
plot.new()
title(main="Blue: 99th percentile
Red: 1st percentile")
curve(dnorm, xlim = c(-3, 3), ylim = c(0, 0.5), xlab = "z", ylab="f(z)")
prob1 = 0.99
x1= c(-3, seq(-3, qnorm(prob1), by=.001), qnorm(prob1))
y1= c(0, dnorm(seq(-3, qnorm(prob1), by=.001)), 0)
polygon(x1, y1, col="blue")

par(new=TRUE)

prob2 = 0.01
x2= c(-3, seq(-3, qnorm(prob2), by=.0001), qnorm(prob2))
y2= c(0, dnorm(seq(-3, qnorm(prob2), by=.0001)), 0)
polygon(x2, y2, col="red")


