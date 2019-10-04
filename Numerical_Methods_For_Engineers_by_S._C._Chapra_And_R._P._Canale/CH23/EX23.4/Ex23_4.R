f <- function(x) {
  0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5
}

a=0
b=0.8
Q=integrate(f,0,0.8)
cat("Q=",Q,"\n")
x<-c(0, 0.12, 0.22, 0.32, 0.36, 0.4 ,0.44, 0.54 ,0.64, 0.7, 0.8)
y=f(x)

#This algorithm uses 
#the formula for the area of a trapezoid: area = width × average of the lengths of the parallel sides.

UseTrapezoidRule <- function(xmin, xmax, num_intervals) {
  #Calculate the width of a trapezoid.
  dx = (xmax - xmin) / num_intervals
  #Add up the trapezoids' areas.
  total_area = 0
  x = xmin
  for (i in 1:num_intervals){
    total_area = total_area + dx * (f(x) + f(x + dx)) / 2
    x = x + dx
  }
  return(total_area)
}

integral = UseTrapezoidRule(0,0.8,10000)

cat("Trapezoid intergral=",integral,"\n","diff(x)=",diff(x),"\n")
d=diff(y)/diff(x)
cat("d=",d)