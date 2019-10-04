#Digital Channel(Pg no.180)

x = c(0.6,0.3,0.08,0.02)
P = dmultinom(c(12,6,2,0), prob = x)
cat("P(12E's, 6 G's, 2 F's, and 0 P) =",round(P, digits = 4))
