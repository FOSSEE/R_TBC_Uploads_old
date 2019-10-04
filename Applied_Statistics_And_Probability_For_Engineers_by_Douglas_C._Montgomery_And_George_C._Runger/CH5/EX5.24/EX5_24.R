#Digital Channel(Pg no. 179)

e = 0.6
g = 0.3
f = 0.08
p = 0.02

prob = (e^14)*(g^3)*(f^2)*(p^1)
prob

no_seq = factorial(20)/(factorial(14)*factorial(3)*factorial(2)*factorial(1))
no_seq

P = no_seq*prob
cat("P(14E's, 3 G's, 2 F's, and 1 P) =",round(P,digits = 4))