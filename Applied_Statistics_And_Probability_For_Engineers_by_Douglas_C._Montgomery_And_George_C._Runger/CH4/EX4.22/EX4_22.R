#Lack of memory property(Pg no. 135)

u = 1.4 #expectation in min
#P(X<0.5min)
f = 1 - exp(-(0.5/1.4))
cat("probability that we detect a particle within 30 seconds of starting the counter is",f)

#P(3< X <3.5)
f1 = (1 - exp(-(3.5/1.4))) - (1 - exp(-(3/1.4)))

#P(X >3)
f2 = 1 - (1 - exp(-(3/1.4)))

#P(X <3.5 | X >3) = P(3< X <3.5) / P(X >3)
result = f1/f2
round(result,digits = 2)
