data =c(70,29,60,28,64,32,44,24,35,31,38,35,52,23,40,28,46,33,46,27,37,34,41,28)

#Exponential Distribution
ks.test(data,"pnorm",mean(data),sd(data))

#Lognormal Distribution
ks.test(log(data),"pnorm",mean(data),sd(data))

# the answers are different from those given in the book.