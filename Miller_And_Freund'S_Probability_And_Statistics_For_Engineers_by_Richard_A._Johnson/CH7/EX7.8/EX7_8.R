n = 18
x = 22.6
s = 15.7
t0.025=qt(1-0.025,17)
Int1=x-t0.025*s/sqrt(n)
Int1
Int2=x+t0.025*s/sqrt(n)
Int2
cat("We are 95 % confident that the interval from 14.79 to 30.41 MJ/m3 contains the
mean toughness of all possible artificial fibers created by the current process.")