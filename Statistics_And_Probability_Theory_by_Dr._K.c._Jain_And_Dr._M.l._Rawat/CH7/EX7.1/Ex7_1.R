#Example 1 chapter 7 page no 295
l = 6       #arrival_rate persons per hour
u = 60/3   # mean service rate per hour
ls = l/(u-l)      # average number of person in the system
cat(ls,"average no of persons in the system")
pts10=exp(-(u-l)*10/60)
cat(pts10,"prob to spent more than 10min in queue")
ptq10=(l/u)*exp(-(u-l)*10/60)
cat(ptq10,"prob to waits more than 10min in queue")
cat(l/u, "prob that an arrival has to wait")
cat(l/u*100,"% of the day phone is busy")
cat(u/(u-l),"avg length of non empty queues")
