#Example 2 chapter 8 page no 372
u=60/10  #avg service rate cars per hour
l=4  #arrival rate in cars per hour
ws=1/(u-l)   
print("for case (a) exponential distribution")
cat("time spent in the system in minutes",ws*60)       
wq = ws - (1/u)
cat("time spent in the system in minutes",wq*60)       
print("for case (b) constant distribution")
ws = 1/u  + l/(2*u*(u-l))
cat("time spent in the system in minutes",ws*60)       
wq=ws - 1/u
cat("time spent in the system in minutes",wq*60)       
print("hense constant distribution is more favourable due to reduced waiting time")
