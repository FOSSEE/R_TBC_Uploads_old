##Chapter 18 : Classical Optimization theory
##Example 1-3 : Page 717

#The function expression has to be given as function to nlm function
g<-function(x){
  return((3*x-2)^2 * (2*x-3)^2)
}
#calling nlm function with function g and initial guess 0
nlm(g,0)
