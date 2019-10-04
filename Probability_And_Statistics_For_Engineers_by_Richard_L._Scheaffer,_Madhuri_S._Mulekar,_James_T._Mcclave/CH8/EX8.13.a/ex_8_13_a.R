n1 = 10
n2 = 10

# 2 cases: s1*s1 > 2*s2*s2 and s2*s2 > 2*s1*s1
# Let s1^2/s2^2 =X

# The probability of observing one sample variance at least 2 times larger than the other is
#P(X<0.5) + P(X>2)

# Using F distribution

cat("P(F(9,9)<0.5) + P(F(9,9)>2) = ", pf(0.5,9,9) + pf(2,9,9,lower.tail = F))

cat(" There is approximately ", (pf(0.5,9,9) + pf(2,9,9,lower.tail = F))*100, " chance that one sample variance will be at least 2 times larger than the other
, even if the population variances are equal.")
    