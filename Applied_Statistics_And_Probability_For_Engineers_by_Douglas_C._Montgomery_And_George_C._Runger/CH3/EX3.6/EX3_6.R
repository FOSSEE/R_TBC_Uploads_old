#Digital channel(Pg no. 71)

#probability of error in given number(X) of bits
zero = 0.6561 # P(X=0)
one = 0.2916 # P(X=1)
two = 0.0486 # P(X=2)
three = 0.0036 # P(X=3)


X = zero + one + two + three
Y = zero + one + two

cat("P(X<=3) =",X)
cat("P(X=3) =",X-Y)
