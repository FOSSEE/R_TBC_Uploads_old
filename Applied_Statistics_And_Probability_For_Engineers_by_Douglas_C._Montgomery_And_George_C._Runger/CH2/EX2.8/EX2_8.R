#Hospital Emergency Visits(Pg no. 21)

total = c(5292,6991,5640,4329)
lwbs = c(195,270,246,242)
admitted = c(1277,1558,666,984)
not_admitted = c(3820,5163,4728,3103)
df = data.frame("total" = total, "lwbs" = lwbs, "admitted" = admitted, "not_admitted" = not_admitted)
# A is the event that a visit is to hospital 1
# B is the event that the result of the visit is LWBS
A_intersection_B = df$lwbs[1]
Abar = sum(df$total[2:4])
A_union_B = df$total[1] + sum(df$lwbs[2:4])

cat("A union B =",A_union_B)
cat("A intersection B =",A_intersection_B)
cat("Abar =",Abar)

# The answer given in textbook for A intersection B is wrong