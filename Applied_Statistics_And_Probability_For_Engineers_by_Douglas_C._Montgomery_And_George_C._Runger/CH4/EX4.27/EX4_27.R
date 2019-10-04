
#(Pg no. 149)

alpha = 2.5
beta = 1


#P(X > 0.7)
 p = pbeta(q = 0.7, shape1 = alpha, shape2 = beta, lower.tail = FALSE)
 cat("P(X > 0.7) =",round(p,digits = 2))
