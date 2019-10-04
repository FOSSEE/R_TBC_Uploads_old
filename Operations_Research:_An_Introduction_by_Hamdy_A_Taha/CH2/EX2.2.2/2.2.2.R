##Chapter 2 : Modelling with Linear Programming
##Example 2-2 : Page 24

#To plot the line, we have to consider them as equation instead of inequality and express/
#them in terms of x2 : 

#Constraint 1 : x1 + x2 <= 800
#Con1         : x2 = (800 - x1)
con1 <- function(x1) (800 - x1)
plot (con1, xlab = "x1", ylab = "x2", xlim = c(0,1500), ylim = c(0,1500), col = "red",
      main = "Example 2-2", yaxs= "i", xaxs = "i")
#xlab & ylab  : x and y label respectively
#xlim         : limits of x value on the plot
#ylim         : limits of y value on the plot
#col          : color of the line
#main         : Title of the plot
#yaxs & xaxs  : the style of axis interval calculation to be used by R. The default 
#value is a 4% gap at each end of axis

#Constraint 2 : 0.21 * x1 - 0.3 * x2 <= 0
#Con2 : x2 = (0.21 * x1)/0.3
con2 <- function(x1) (0.21 * x1)/0.3
plot (con2, add=T, xlim = c(0,1500), ylim = c(0,1500), col = "blue")
#add          : adds to an existing plot


#Constraint 3 : 0.03 * x1 - 0.01 * x2 >= 0
#Con3 : x2 = (0.03 * x1)/0.01
con3 <- function(x1) (0.03 * x1)/0.01
plot (con3, add=T, xlim = c(0,1500), ylim = c(0,1500), col = "green")

#Points of intersections of constraints : (0,1),(1,2),(2,2),(2,1.5),(4,0)
points(c(470.6,200),c(329.4,600))

#Add a shaded area
polygon(c(470.6,200,500,15000/7),c(329.4,600,1500,1500), col = rgb(0.48, 0.46, 0.46, 0.5), 
        border=NA)
#border : option to add border to the shaded area

#Adding "solution space" text to the shaded area at (750,1000) 
text(750,1000,"Solution \nSpace")

##Objective function  :Min 0.3 *x1 + 0.9 * x2
# Minimum objective is 437.64, Therefore 0.3 *x1 + 0.9 * x2 = 437.64
# Obj  : x2 = (437.64 - 0.3 * x1)/0.9
Obj <- function(x1) (437.64 - 0.3 * x1)/0.9
plot (Obj, add=T, xlim = c(0,1500), ylim = c(0,1500), lty =2 )
#lty    : option to set the type of line,2 for dashed line

text(1000,250,"x1 = 470.6 \nx2 = 329.4 \n z=437.64")
