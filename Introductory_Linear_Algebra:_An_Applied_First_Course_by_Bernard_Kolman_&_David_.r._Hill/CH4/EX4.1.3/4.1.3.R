#Example 3,section 4.1, page 216
#Show vector U in cartesian coordinate system:

library(graphics)
x <- c(0,2)
y <- c(0,3)
plot.new()
plot.default(c(0,4),c(0,4))
arrows(x0=0,y0=0,x1=2,y1=3,length=0.15,angle=20,code=2 ,lwd=2)
