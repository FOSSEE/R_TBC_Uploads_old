##Chapter 2 : Modelling with Linear Programming
##Example 2-1 : Page 16

#To plot the line, we have to consider them as equation instead of inequality and express/
#them in terms of x2 : 

#Constraint 1 : 6 * x1 + 4 * x2 <= 24
#Con1         : x2 = (24 - 6 * x1)/4
con1 <- function(x1) (24 - 6 * x1)/4
plot (con1, xlab = "x1", ylab = "x2", xlim = c(0,7), ylim = c(0,7), col = "red",
      main = "Example 2-1", yaxs= "i", xaxs = "i")
#xlab & ylab  : x and y label respectively
#xlim         : limits of x value on the plot
#ylim         : limits of y value on the plot
#col          : color of the line
#main         : Title of the plot
#yaxs & xaxs  : the style of axis interval calculation to be used by R. The default 
#value is a 4% gap at each end of axis

#Constraint 2 : x1 + 2 * x2 <=6
#Con2 : x2 = (6 - x1)/2
con2 <- function(x1) (6 - x1)/2
plot (con2, add=T, xlim = c(0,7), ylim = c(0,7), col = "blue")
#add          : adds to an existing plot


#Constraint 3 : -x1 + x2 <= 1
#Con3         : x2 = (1 + x1)
con3 <- function(x1) (1 + x1)
plot (con3, add=T, xlim = c(0,7), ylim = c(0,7), col = "green")

#Constraint 4 : x2 <= 2
#Con4         : x2 = 2
con4 <- function(x1) (2 + 0*x1)
plot (con4, add=T, xlim = c(0,7), ylim = c(0,7), col = "green")
#h            : horizontal line at y=2

#Points of intersections of constraints : (0,1),(1,2),(2,2),(2,1.5),(4,0)
points(c(0,1,2,3,4),c(1,2,2,1.5,0))

#Add a shaded area
polygon(c(0,1,2,3,4,0),c(1,2,2,1.5,0,0), col = rgb(0.48, 0.46, 0.46, 0.5), 
        border=NA)
#border       : option to add border to the shaded area

#Adding "solution space" text to the shaded area at (2,1) 
text(2,1,"Solution \nSpace")

##Objective function  :Max 5 *x1 + 4 * x2
# maximum objective is 21, Therefore 5 *x1 + 4 * x2 =21
# Obj         : x2 = (21 - 5*x1)/4
Obj <- function(x1) (21 - 5*x1)/4
plot (Obj, add=T, xlim = c(0,7), ylim = c(0,7), lty =2 )
#lty          : option to set the type of line,2 for dashed line

text(3,3,"x1 = 3 \nx2 = 1.5 \n z=21")
