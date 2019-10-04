# Chapter 1 - Introduction to Probability, Section - 1.4 (Set Theory), Page No. - 12

x<-c(4,200);
y<-c(1,150);

# For description of "plot" and/or "rect" functions, type ?plot and/or ?rect in the console.

plot(x, y, xlab = "Water", ylab = "Electric", panel.first = rect(x[1],y[1],x[2],y[2]))

# Water demand is atleast 100 and is represented by xmin. Marked as "Blue".

xmin=100;
rect(xmin,y[1],x[2],y[2],col='blue')

# Electric demand is no more than 35 and is represented by ymax. Marked as "Yellow".

ymax=35;
rect(x[1],y[1],x[2],ymax,col='yellow')