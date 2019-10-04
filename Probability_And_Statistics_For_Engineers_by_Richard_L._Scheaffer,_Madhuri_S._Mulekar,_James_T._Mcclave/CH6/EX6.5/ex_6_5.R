a = function(x){
  3*x*x*x
}

E= integrate(a,0,1)$value

cat(" on the average, the lathe is in use ", E*100,"percent of the time")

b =function(x){
  3*x*x*x*x
}

cat("Variance is ",integrate(b,0,1)$value - E^2 )
