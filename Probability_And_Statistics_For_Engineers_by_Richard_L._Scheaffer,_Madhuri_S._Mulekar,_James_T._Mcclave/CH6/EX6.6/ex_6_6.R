a = function(x){
  if(x<0){
    0
  } else if(x>=0 && x<=1){
    x*x
  } else if(x>=1 && x<=2){
    x/2
  } else {
    0
  }
}

b =integrate(Vectorize(a),0,1)$value 
c=  integrate(Vectorize(a),1,2)$value
cat("The expected weekly demand for kerosene is ",b+c," gallons")
