##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 2-1 : Page 83

#To plot the line, we have to consider them as equation instead of inequality and express/
#them in terms of x2 : 

#Constraint 1 : 2 * x1 + x2 <= 4
#Con1         : x2 = (4 - 2 * x1)
con1 <- function(x1) (4 - 2 * x1)
plot (con1, xlab = "x1", ylab = "x2", xlim = c(0,6), ylim = c(0,5), col = "red",
      main = "Example 2-1", yaxs= "i", xaxs = "i")
#xlab & ylab  : x and y label respectively
#xlim         : limits of x value on the plot
#ylim         : limits of y value on the plot
#col          : color of the line
#main         : Title of the plot
#yaxs & xaxs  : the style of axis interval calculation to be used by R. The default 
#value is a 4% gap at each end of axis

#Constraint 2 : x1 + 2 * x2 <= 5
#Con2 : x2 = (5 - x1)/2
con2 <- function(x1) (5 - x1)/2
plot (con2, add=T, xlim = c(0,6), ylim = c(0,5), col = "blue")
#add          : adds to an existing plot

#Points of intersections of constraints and the axis : (0,0),(0,2.5),(1,2),(2,0),(5,0),(0,4)
points(c(0,0,1,2,5,0),c(0,2.5,2,0,0,4))

#Inserting texts to name the points
text(c(0,0,1,2,5,0)+0.1,c(0,2.5,2,0,0,4)+0.2,LETTERS[1:6],cex = 0.7)
#First two arguments are x(+0.1) and y(+0.2) coordinates
#LETTERS      : a stored array variable of all alphabets
#cex          : ratio of modification to font size

#Add a shaded area
polygon(c(0,0,1,2),c(0,2.5,2,0), col = rgb(0.48, 0.46, 0.46, 0.5), 
        border=NA)
#border       : option to add border to the shaded area

#Adding "solution space" text to the shaded area at (0.7,1) 
text(0.7,1,"Solution \nSpace",cex = 0.9)

##Objective function  :Max 2 *x1 + 3 * x2
# maximum objective is 8, Therefore 2 *x1 + 3 * x2 = 8
# Obj         : x2 = (8 - 2*x1)/3
Obj <- function(x1) (8 - 2*x1)/3
plot (Obj, add=T, xlim = c(0,6), ylim = c(0,5), lty =2 )
#lty          : option to set the type of line,2 for dashed line

#Adding text at (3,3)
text(3,3,"x1 = 1 \nx2 = 2 \n z = 8")