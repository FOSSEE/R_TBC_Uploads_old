#page no. 81
#example 4-9

#for x<0
fx=1/4

#for 1<=x<=2

fx=3/4


print("the function f(x) comes out to be a staircase like function which is ploted below")
x <- c(0,1,2,3)
y<-c(0,1/4,3/4,1)
plot(x, y, type = "S", ylab = "F(x)")