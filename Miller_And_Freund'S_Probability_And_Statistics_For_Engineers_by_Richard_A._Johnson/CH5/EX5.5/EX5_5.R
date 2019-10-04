#Standered Normal Distribution
mean=0
sd=1
#a)area between 1.28  and 0.87
a=pnorm(1.28) -pnorm(0.87)
a
#b)area between  -0.34 and 0.62
b=pnorm(0.62) -pnorm(-0.34)
b
#c)greater then 0.85
c=pnorm(0.85,lower.tail = FALSE)
c
#c)greater then -0.65
d=pnorm(-0.65,lower.tail = FALSE)
d
