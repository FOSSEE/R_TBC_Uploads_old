##Chapter 17 : Simulation Modelling
##Example 1-1 : Page 681

#number of trials
n=1000
#Setting up parameters for the plot
par(pty="s")
#plot empty graph
plot(1, axes=T,asp = 1, xlim = c(-4, 6),ylim = c(-3, 7))
#getting a sample of 1000 random uniform numbers within the given range
x=-4+(10)*runif(n)
y=-3+10*runif(n)
#counting the number of true values for the give expression
m=sum((x-1)^2+(y-2)^2<25)
#plotting the points on the graph
points(x, y)
#plotting  the circle
symbols(x=1,y=2,circles = 5,add = T,inches = F)
#plotting  the square
symbols(x=1,y=2,squares =10,add = T,inches = F)
#Area of the circle
ApproxArea=m*100/n
ApproxArea