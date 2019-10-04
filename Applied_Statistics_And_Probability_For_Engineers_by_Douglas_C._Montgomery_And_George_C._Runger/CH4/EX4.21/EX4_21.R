#Computer Usage(Pg no. 134)

mean = 25  #log-on per hour
x = 0.1 #6 min = 0.1 hr

#P(X>0.1)
p1 = pexp(x,mean,lower.tail = FALSE)

#P(0.033<X<0.05)
p2 = (pexp(0.033,25,lower.tail = FALSE) + pexp(0.05,25,lower.tail = TRUE))-1

cat(round(p1,digits = 3),"is the probability that there are no log-ons in an interval of six minutes")
cat(round(p2, digits = 3),"is the probability that the time until the next log-on is between two and three minutes")

#P(X > x) = 0.90
x = log(0.90)/(-mean)
cat("the length of time x such that P ( X > x ) = 0 . 90 is",round(x*60, digits = 2),"minutes")
cat("the mean time until the next log-on is", (1/mean)*60,"minutes")
cat("The standard deviation of the time until the next log-on is",(1/mean)*60,"minutes")