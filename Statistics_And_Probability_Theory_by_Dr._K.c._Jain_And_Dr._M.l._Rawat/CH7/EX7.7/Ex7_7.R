#Example7 chapter 7 page no 301
l= 5 #break downs per hout
u=7    #repairs per hour
cat("avg units per hour",l/(u-l))
cat("loss due to machines idle",8*15*l/(u-l))
cat("repair man charge",8*8)
costA=8*15*l/(u-l)+8*8
u2=9
cat("avg units per hour for B",l/(u2-l))
cat("loss due to machines idle for B",8*15*l/(u2-l))
costB =8*15*l/(u2-l) +10*8
cat("cost of A",costA,"\ncost of B",costB)
