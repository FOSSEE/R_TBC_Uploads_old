p1= 0.04
p2= 0.025
n1 = 200
n2 = 200
diff_mean = p1-p2
diff_sd = sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n2)

cat("P(|p1 - p2|) =",  pnorm(0.02,diff_mean,diff_sd,lower.tail = FALSE) )

# There is a fairly high chance (38.88%) of observing a difference of at most 2 percentage points between the sample proportion defectives

#Answer given in book is wrong. Answer will be twice of what given in book.

