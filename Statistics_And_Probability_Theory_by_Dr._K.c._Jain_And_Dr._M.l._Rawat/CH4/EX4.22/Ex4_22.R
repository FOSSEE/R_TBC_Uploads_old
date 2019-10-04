#Example 22 chapter 4 page no 188
n=10
p=1/100
m=n*p
p0=round(dpois(0,m),3)
cat("prob of no defective blade",p0)
p1=round(dpois(1,m),4)
cat("prob of one defective blade",p1)
p2=round(dpois(2,m),4)
cat("prob of two defective blade",p2)
cat("packets with 0 defective blade",10000*p0)
cat("packets with 1 defective blade",10000*p1)
cat("packets with 2 defective blade",10000*p2)
