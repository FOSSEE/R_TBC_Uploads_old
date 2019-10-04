#Example 54 chapter 1 page no 47
P_0rec0sent = 0.94
P_1rec1sent = 0.91
P_1rec0sent = 1-P_0rec0sent
P_0rec1sent = 1-P_1rec1sent
p1=0.55
p0=1-p1
cat("prob of 1 recieved",P_1rec0sent*p0 + P_1rec1sent*p1)
cat("prob of 0 recieved",P_0rec0sent*p0 + P_0rec1sent*p1)
P_1sent1rec = P_1rec1sent*p1/(P_1rec1sent*p1 + P_1rec0sent*p0)
cat("prob that 1 was transmitted when 1 was recieved",P_1sent1rec)
P_0sent0rec = P_0rec0sent*p0/(P_0rec1sent*p1 + P_0rec0sent*p0)
cat("prob that 0 was transmitted when 0 was recieved",P_0sent0rec)
cat("prob of error",P_0rec1sent*p1 + P_1rec0sent*p0)
