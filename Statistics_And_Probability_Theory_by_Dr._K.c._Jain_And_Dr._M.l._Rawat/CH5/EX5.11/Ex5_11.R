#Example 11 Chapter 5 Page no 220
u=64.5   #mean height in inches of 300 students
n=300
sd=3.3
cat("students with height less than 5 feet",round(n*pnorm(60,u,sd),digits = 0))
p = (pnorm(69,u,sd)-pnorm(60,u,sd))
cat("students having height bw 5 ft to 5ft 9 inch ",as.integer(n*p))
x=1-0.99
z1=qnorm(x/2)
z2=0-z1
x1=sd*z1+u
x2=sd*z2+u
cat("99% students are bw height(in inches)",round(x1,0),round(x2,0))
